import re
from pathlib import Path

IMG_PAD = 800
PIX_U = 16
NSV = 96

def parse_2d_initializer(path):
    text = Path(path).read_text()

    # extract all floating-point literals
    vals = [float(x) for x in re.findall(r'[-+]?\d+(?:\.\d+)?', text)]

    # skip dimensions like [96][800] if they appear in regex capture
    # detect usable tail by taking the last NSV*IMG_PAD numbers
    need = NSV * IMG_PAD
    vals = vals[-need:]

    rows = []
    for i in range(NSV):
        rows.append(vals[i*IMG_PAD:(i+1)*IMG_PAD])
    return rows

def to_raw_ap_fixed_8_7(v):
    # ap_fixed<8,7> has 1 fractional bit, so scale by 2
    raw = int(round(v * 2.0))

    if raw < -128:
        raw = -128
    if raw > 127:
        raw = 127
    return raw & 0xFF

def pack_row(row):
    words = []
    for g in range(IMG_PAD // PIX_U):
        word = 0
        base = g * PIX_U
        for p in range(PIX_U):
            raw = to_raw_ap_fixed_8_7(row[base + p])
            word |= (raw << (8 * p))
        words.append(word)
    return words

def write_header(rows, out_path, array_name):
    lines = []
    lines.append(f"#ifndef {array_name.upper()}_H")
    lines.append(f"#define {array_name.upper()}_H")
    lines.append('#include "ap_int.h"')
    lines.append("")
    lines.append("typedef ap_uint<128> svword_t;")
    lines.append(f"static const svword_t {array_name}[96][50] = {{")

    for row in rows:
        packed = pack_row(row)
        lines.append("  {")
        for w in packed:
            lines.append(f"    svword_t(\"0x{w:032x}\"),")
        lines.append("  },")

    lines.append("};")
    lines.append("")
    lines.append("#endif")
    Path(out_path).write_text("\n".join(lines))

if __name__ == "__main__":
    sv0 = parse_2d_initializer("svs_0_p800.h")
    sv1 = parse_2d_initializer("svs_1_p800.h")

    write_header(sv0, "svs0_pack_p800.h", "svs0_pack")
    write_header(sv1, "svs1_pack_p800.h", "svs1_pack")

    print("Generated svs0_pack_p800.h and svs1_pack_p800.h")