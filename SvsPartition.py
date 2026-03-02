import re
import numpy as np
from pathlib import Path

# What exists in the input file
NSV_IN = 165

# What you want in the packed output (padded)
NSV_OUT = 176

IMG_SIZE = 784
PACK = 16
GROUPS = IMG_SIZE // PACK  # 49

def extract_numbers(text: str):
    nums = re.findall(r'[-+]?\d*\.\d+|[-+]?\d+', text)
    return np.array([float(x) for x in nums], dtype=np.float64)

def to_raw_int8_apfixed_8_7(vals: np.ndarray) -> np.ndarray:
    # ap_fixed<8,7> => 1 fractional bit => exact if multiples of 0.5
    raw = np.rint(vals * 2.0).astype(np.int64)
    raw = np.clip(raw, -128, 127).astype(np.int8)
    return raw

def pack16_bytes_to_u128_hex(b16: np.ndarray) -> str:
    u = int.from_bytes(b16.astype(np.uint8).tobytes(), byteorder="little", signed=False)
    return f"0x{u:032X}"

def main(in_path="svs.h", out_path="svs_packed.h"):
    text = Path(in_path).read_text()
    vals = extract_numbers(text)

    need_in = NSV_IN * IMG_SIZE
    if vals.size < need_in:
        raise RuntimeError(f"Found {vals.size} values, expected at least {need_in}.")

    # Only take exactly the amount we expect for NSV_IN
    vals = vals[:need_in].reshape(NSV_IN, IMG_SIZE)

    # Quantize to raw int8 codes (value * 2)
    raw_in = to_raw_int8_apfixed_8_7(vals)  # (NSV_IN, IMG_SIZE)

    # Pad to NSV_OUT with zeros
    raw = np.zeros((NSV_OUT, IMG_SIZE), dtype=np.int8)
    raw[:NSV_IN, :] = raw_in

    with open(out_path, "w") as f:
        f.write("#ifndef SVS_PACKED_H\n#define SVS_PACKED_H\n\n")
        f.write('#include "ap_int.h"\n\n')
        f.write(f"#define NSV {NSV_OUT}\n#define IMG_SIZE {IMG_SIZE}\n")
        f.write(f"#define SVS_PACK {PACK}\n#define SVS_GROUPS {GROUPS}\n\n")
        f.write("typedef ap_uint<128> sv_pack_t;\n\n")
        f.write("static const sv_pack_t svs_packed[NSV][SVS_GROUPS] = {\n")

        for i in range(NSV_OUT):
            f.write("  {\n")
            for g in range(GROUPS):
                chunk = raw[i, g*PACK:(g+1)*PACK]
                f.write(f"    (sv_pack_t)\"{pack16_bytes_to_u128_hex(chunk)}\",\n")
            f.write("  },\n")

        f.write("};\n\n#endif\n")

    print(f"Wrote {out_path} with NSV={NSV_OUT} (padded {NSV_OUT-NSV_IN} SVs with zeros).")

if __name__ == "__main__":
    main()