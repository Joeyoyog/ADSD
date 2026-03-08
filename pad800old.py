import re
from pathlib import Path

IMG_SIZE = 784
IMG_PAD  = 800
NSV      = 96

def parse_2d_initializer(text):
    start = text.find('{')
    end   = text.rfind('};')
    body  = text[start+1:end]
    # Grab all numeric literals
    nums = re.findall(r'[-+]?\d*\.\d+(?:[eE][-+]?\d+)?|[-+]?\d+', body)
    vals = [float(x) for x in nums]
    if len(vals) != NSV*IMG_SIZE:
        raise ValueError(f"Expected {NSV*IMG_SIZE} values, got {len(vals)}")
    rows = [vals[i*IMG_SIZE:(i+1)*IMG_SIZE] for i in range(NSV)]
    return rows

def write_header(path_out, array_name, rows):
    lines = []
    lines += [f"#ifndef {array_name.upper()}_H",
              f"#define {array_name.upper()}_H",
              '#include "ap_fixed.h"',
              '#include "Classifier.h"',
              f"static const ap_fixed<8,7> {array_name}[{NSV}][{IMG_PAD}] = {{"]
    for r in rows:
        rpad = r + [0.0]*(IMG_PAD-IMG_SIZE)
        lines.append("  {")
        for v in rpad:
            lines.append(f"    {v},")
        lines.append("  },")
    lines += ["};",
              "#endif"]
    Path(path_out).write_text("\n".join(lines))

for name in ["svs_0", "svs_1"]:
    text = Path(f"{name}.h").read_text()
    rows = parse_2d_initializer(text)
    write_header(f"{name}_p800.h", f"{name}_p800", rows)
    print(f"Wrote {name}_p800.h")
