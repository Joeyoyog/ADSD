import math
from pathlib import Path

# Matches Exp.h
X_W, X_I = 16, 4          # x_t: ap_fixed<16,4> => Q4.12
Y_W, Y_I = 20, 1          # out_t: ap_ufixed<20,1> => Q1.19
X_F = X_W - X_I           # 12
Y_F = Y_W - Y_I           # 19
Y_SCALE = 1 << Y_F        # 2^19

# Choose LUT size (power of two recommended). 1024 is a good starting point.
N = 1024

# For fast index arithmetic without multipliers:
# step = 8/N, and with Q4.12 input, idx = u_raw >> SHIFT where SHIFT = X_F - log2(N/8)
# Works cleanly when N/8 is a power of two (true for N=1024,2048,4096,...).
LOG2_N_OVER_8 = int(math.log2(N // 8))
SHIFT = X_F - LOG2_N_OVER_8
assert (N % 8 == 0) and ((N // 8) & ((N // 8) - 1) == 0), "Pick N where N/8 is power-of-two (e.g., 1024, 2048)."
assert SHIFT > 0, "SHIFT must be > 0. Increase N or check parameters."

def q1_19(y: float) -> int:
    q = int(round(y * Y_SCALE))
    if q < 0: q = 0
    if q > (1 << Y_W) - 1: q = (1 << Y_W) - 1
    return q

def main(out_path="exp_lut.h"):
    step = 8.0 / N

    # We store a single 40-bit entry: [dy(20 bits) | y0(20 bits)]
    # y0 = exp(x_i), dy = exp(x_{i+1}) - exp(x_i)
    entries = []
    for i in range(N):
        x0 = -8.0 + i * step
        x1 = x0 + step
        y0 = math.exp(x0)
        y1 = math.exp(x1)
        y0q = q1_19(y0)
        dyq = q1_19(y1) - y0q
        if dyq < 0: dyq = 0  # should be non-negative

        packed = (dyq << Y_W) | y0q   # 40-bit
        entries.append(packed)

    lines = []
    lines.append("#ifndef EXP_LUT_H")
    lines.append("#define EXP_LUT_H\n")
    lines.append('#include "ap_int.h"')
    lines.append("")
    lines.append(f"#define EXP_LUT_N      {N}")
    lines.append(f"#define EXP_LUT_SHIFT  {SHIFT}   // idx = u_raw >> SHIFT, frac = u_raw & ((1<<SHIFT)-1)")
    lines.append("")
    lines.append("typedef ap_uint<40> exp_pair_t;   // [dy(20) | y0(20)] in Q1.19")
    lines.append("static const exp_pair_t EXP_LUT[EXP_LUT_N] = {")
    for i,e in enumerate(entries):
        # 40 bits -> 10 hex digits
        hexstr = f"0x{e:010X}"
        comma = "," if i != len(entries)-1 else ""
        lines.append(f"  (exp_pair_t){hexstr}{comma}")
    lines.append("};\n")
    lines.append("#endif")

    Path(out_path).write_text("\n".join(lines))
    print(f"Wrote {out_path} with N={N}, SHIFT={SHIFT}, entry bits=40 (~{N*40/1024:.1f} kbits).")

if __name__ == "__main__":
    main()