import re
import math
from pathlib import Path

IMG_SIZE = 784
LANES = 16
SPLITS = 2  # two machines

def extract_numbers_in_braces(text: str):
    # Extract initializer list numbers in the first {...}; region.
    start = text.find("{")
    end = text.rfind("};")
    if start < 0 or end < 0 or end <= start:
        raise ValueError("Could not locate '{ ... };' initializer region.")
    body = text[start+1:end]
    nums = re.findall(r'[-+]?\d*\.\d+(?:[eE][-+]?\d+)?|[-+]?\d+(?:[eE][-+]?\d+)?', body)
    return nums

def pad_to_multiple(n, factor):
    return int(math.ceil(n / factor) * factor)

def write_alpha_header(path, name, values):
    lines = []
    lines.append('#ifndef ' + name.upper() + '_H')
    lines.append('#define ' + name.upper() + '_H')
    lines.append('#include "ap_fixed.h"')
    lines.append(f"static const ap_fixed<8, 5> {name}[{len(values)}] = {{")
    for v in values:
        lines.append(f"  {v},")
    lines.append("};\n#endif")
    Path(path).write_text("\n".join(lines))

def write_norm_header(path, name, values):
    lines = []
    lines.append('#ifndef ' + name.upper() + '_H')
    lines.append('#define ' + name.upper() + '_H')
    lines.append('#include "ap_fixed.h"')
    lines.append(f"static const ap_fixed<32,16> {name}[{len(values)}] = {{")
    for v in values:
        lines.append(f"  {v},")
    lines.append("};\n#endif")
    Path(path).write_text("\n".join(lines))

def write_svs_header(path, name, svs_2d):
    nsv = len(svs_2d)
    lines = []
    lines.append('#ifndef ' + name.upper() + '_H')
    lines.append('#define ' + name.upper() + '_H')
    lines.append('#include "ap_fixed.h"')
    lines.append('#include "Classifier.h"')
    lines.append(f"static const ap_fixed<8,7> {name}[{nsv}][IMG_SIZE] = {{")
    for i in range(nsv):
        lines.append("  {")
        row = svs_2d[i]
        for j in range(IMG_SIZE):
            lines.append(f"    {row[j]},")
        lines.append("  },")
    lines.append("};\n#endif")
    Path(path).write_text("\n".join(lines))

def main():
    svs_text = Path("svs.h").read_text()
    a_text   = Path("alphas.h").read_text()
    n_text   = Path("sv_norms.h").read_text()

    svs_vals = [float(x) for x in extract_numbers_in_braces(svs_text)]
    a_vals   = [float(x) for x in extract_numbers_in_braces(a_text)]
    n_vals   = [float(x) for x in extract_numbers_in_braces(n_text)]

    # Infer valid NSV from svs count
    if len(svs_vals) % IMG_SIZE != 0:
        raise ValueError("svs initializer count is not a multiple of IMG_SIZE.")
    nsv_valid = len(svs_vals) // IMG_SIZE

    # Truncate alphas to valid size if it includes padding already
    a_vals = a_vals[:nsv_valid]
    n_vals = n_vals[:nsv_valid]

    # Reshape SVs
    svs_2d = [svs_vals[i*IMG_SIZE:(i+1)*IMG_SIZE] for i in range(nsv_valid)]

    # Split contiguous (you can change to round-robin if desired)
    splits = []
    base = nsv_valid // SPLITS
    rem = nsv_valid % SPLITS
    idx = 0
    for s in range(SPLITS):
        cnt = base + (1 if s < rem else 0)
        splits.append((idx, idx+cnt))
        idx += cnt

    # Pad each split up to multiple of LANES (for clean unrolling)
    for s, (lo, hi) in enumerate(splits):
        svs_part = svs_2d[lo:hi]
        a_part   = a_vals[lo:hi]
        n_part   = n_vals[lo:hi]

        pad_len = pad_to_multiple(len(svs_part), LANES)
        # Append zeros for padding
        while len(svs_part) < pad_len:
            svs_part.append([0.0]*IMG_SIZE)
            a_part.append(0.0)
            n_part.append(0.0)

        write_svs_header (f"svs_{s}.h",      f"svs_{s}",      svs_part)
        write_alpha_header(f"alphas_{s}.h",  f"alphas_{s}",   a_part)
        write_norm_header (f"sv_norms_{s}.h",f"sv_norms_{s}", n_part)

        print(f"Split {s}: valid {hi-lo}, padded to {pad_len}")

if __name__ == "__main__":
    main()
