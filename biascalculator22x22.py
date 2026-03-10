import numpy as np
import re

def optimize_bias(scores_file='scores.txt', gt_file='ground_truth.h'):
    try:
        scores = np.loadtxt(scores_file)
    except FileNotFoundError:
        print(f"Error: Run the C-Simulation first to generate {scores_file}.")
        return

    try:
        with open(gt_file, 'r') as f:
            match = re.search(r'\{(.*?)\}', f.read(), re.DOTALL)
            if match:
                gt_str = match.group(1)
                ground_truth = np.array([int(x.strip()) for x in gt_str.split(',') if x.strip() != ''])
            else:
                return
    except FileNotFoundError:
        return

    best_bias = 0.0
    best_accuracy = 0.0
    
    # Large 22x22 crops can warp the feature space heavily; search a wide net
    bias_range = np.arange(-20.0, 20.0, 0.001) 
    
    print("Sweeping bias offsets...")
    for b in bias_range:
        predictions = (scores + b >= 0).astype(int)
        accuracy = np.mean(predictions == ground_truth)
        
        if accuracy > best_accuracy:
            best_accuracy = accuracy
            best_bias = b

    print("-" * 30)
    print(f"Optimal BIAS_TUNE Offset: {best_bias:.4f}")
    print(f"Maximum Expected Accuracy:  {best_accuracy * 100:.2f}%")
    print("-" * 30)

if __name__ == "__main__":
    optimize_bias()