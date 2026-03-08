import re
from pathlib import Path

# -----------------------
# CONFIG (edit as needed)
# -----------------------
IMG_SIZE = 784
IMG_PAD  = 800          # pad rows to 800 for svs arrays
NSV_OUT  = 96           # output NSV per machine file (svs_0, svs_1, alphas_0/1, sv_norms_0/1)

# -----------------------
# PARSING HELPERS
# -----------------------
NUM_RE = re.compile(r'[-+]?\d*\.\d+(?:[eE][-+]?\d+)?|[-+]?\d+(?:[eE][-+]?\d+)?')

def extract_numbers(text: str):
    return [float(x) for x in NUM_RE.findall(text)]

def find_static_const_decl(text: str, array_name: str):
    """
    Tries to extract:
      - element type string (e.g. ap_fixed<8,7>)
      - declared dimensions (list of ints if literal, else keep tokens)
    from a line like:
      static const ap_fixed<8,7> svs_0[96][IMG_SIZE] = {
    """
    # grab the declaration line containing "static const ... <name>["
    m = re.search(rf'static\s+const\s+(.+?)\s+{re.escape(array_name)}\s*(\[[^\]]+\])+', text)
    if not m:
        return None, None
    elem_type = m.group(1).strip()
    dims_blob = m.group(2)
    dims = re.findall(r'\[([^\]]+)\]', dims_blob)
    return elem_type, dims

def header_guard(name: str):
    g = re.sub(r'[^A-Za-z0-9_]', '_', name).upper()
    return f"{g}_H"

# -----------------------
# WRITERS
# -----------------------
def write_header_2d_padded(path_out, array_name_out, elem_type, rows, nsv_out, img_pad):
    guard = header_guard(array_name_out)
    lines = []
    lines += [f"#ifndef {guard}", f"#define {guard}", ""]
    lines += ['#include "ap_fixed.h"', '#include "Classifier.h"', ""]
    lines += [f"#define NSV {nsv_out}", f"#define IMG_SIZE {IMG_SIZE}", f"#define IMG_PAD {img_pad}", ""]
    lines += [f"static const {elem_type} {array_name_out}[NSV][IMG_PAD] = {{"]

    # pad rows to nsv_out
    if len(rows) < nsv_out:
        rows = rows + [[0.0]*IMG_SIZE for _ in range(nsv_out - len(rows))]
    else:
        rows = rows[:nsv_out]

    for r in rows:
        rpad = r + [0.0] * (img_pad - IMG_SIZE)
        lines.append("  {")
        for v in rpad:
            lines.append(f"    {v},")
        lines.append("  },")
    lines += ["};", "", f"#endif // {guard}", ""]
    Path(path_out).write_text("\n".join(lines))

def write_header_1d_padded(path_out, array_name_out, elem_type, vec, nsv_out):
    guard = header_guard(array_name_out)
    lines = []
    lines += [f"#ifndef {guard}", f"#define {guard}", ""]
    lines += ['#include "ap_fixed.h"', '#include "Classifier.h"', ""]
    lines += [f"#define NSV {nsv_out}", ""]
    lines += [f"static const {elem_type} {array_name_out}[NSV] = {{"]

    if len(vec) < nsv_out:
        vec = vec + [0.0] * (nsv_out - len(vec))
    else:
        vec = vec[:nsv_out]

    for v in vec:
        lines.append(f"  {v},")
    lines += ["};", "", f"#endif // {guard}", ""]
    Path(path_out).write_text("\n".join(lines))

# -----------------------
# MAIN CONVERSION ROUTINES
# -----------------------
def convert_svs_2d(in_path, out_path, in_array_name, out_array_name, nsv_out=NSV_OUT):
    text = Path(in_path).read_text()
    elem_type, dims = find_static_const_decl(text, in_array_name)
    if elem_type is None:
        raise RuntimeError(f"Could not find declaration for array '{in_array_name}' in {in_path}")

    vals = extract_numbers(text)
    need = len(vals)

    # We reshape assuming source is [NSV][IMG_SIZE] or [<=NSV][IMG_SIZE]
    # If file has more than NSV*IMG_SIZE numbers, we take the first NSV*IMG_SIZE.
    want = nsv_out * IMG_SIZE
    if need < want:
        # allow padding missing rows with zeros
        vals = vals + [0.0] * (want - need)
    else:
        vals = vals[:want]

    rows = [vals[i*IMG_SIZE:(i+1)*IMG_SIZE] for i in range(nsv_out)]
    write_header_2d_padded(out_path, out_array_name, elem_type, rows, nsv_out, IMG_PAD)

def convert_vec_1d(in_path, out_path, in_array_name, out_array_name, nsv_out=NSV_OUT):
    text = Path(in_path).read_text()
    elem_type, dims = find_static_const_decl(text, in_array_name)
    if elem_type is None:
        raise RuntimeError(f"Could not find declaration for array '{in_array_name}' in {in_path}")

    vals = extract_numbers(text)
    write_header_1d_padded(out_path, out_array_name, elem_type, vals, nsv_out)

def main():
    # --- SVS (2D, pad columns to 800)
    convert_svs_2d("svs_0.h", "svs_0_p800.h", "svs_0", "svs_0_p800", nsv_out=NSV_OUT)
    convert_svs_2d("svs_1.h", "svs_1_p800.h", "svs_1", "svs_1_p800", nsv_out=NSV_OUT)

    # --- ALPHAS (1D, pad length to NSV_OUT)
    convert_vec_1d("alphas_0.h", "alphas_0_padded.h", "alphas_0", "alphas_0_padded", nsv_out=NSV_OUT)
    convert_vec_1d("alphas_1.h", "alphas_1_padded.h", "alphas_1", "alphas_1_padded", nsv_out=NSV_OUT)

    # --- SV NORMS (1D, pad length to NSV_OUT)
    convert_vec_1d("sv_norms_0.h", "sv_norms_0_padded.h", "sv_norms_0", "sv_norms_0_padded", nsv_out=NSV_OUT)
    convert_vec_1d("sv_norms_1.h", "sv_norms_1_padded.h", "sv_norms_1", "sv_norms_1_padded", nsv_out=NSV_OUT)

    print("Done. Generated:")
    print("  svs_0_p800.h, svs_1_p800.h")
    print("  alphas_0_padded.h, alphas_1_padded.h")
    print("  sv_norms_0_padded.h, sv_norms_1_padded.h")

if __name__ == "__main__":
    main()