# 613. Shortest Distance in a Line

## 📝 Problem Statement
You are given a table **Point** with the following schema:

| Column Name | Type |
|-------------|------|
| x           | int  |

- `x` is the **primary key** (unique values).
- Each row represents the position of a point on the X-axis.
- The task is to find the **shortest distance between any two points**.

---

## 📊 Example

### Input

Point table:
+––+
| x  |
+––+
| -1 |
| 0  |
| 2  |
+––+

### Output
+–––––+
| shortest |
+–––––+
| 1        |
+–––––+

### Explanation
- Distances:
  - `|(-1) - 0| = 1`
  - `|(-1) - 2| = 3`
  - `|(0) - 2| = 2`
- The minimum is `1`.

---

## 💡 Approach

1. Compute the distance between every pair of points using absolute difference.
2. Find the minimum value across all pairs.

### Optimization Note
- If the table is **already sorted**, you only need to check **adjacent points** because the shortest distance will always be between neighbors.  
- This reduces complexity from **O(N²)** (all pairs) to **O(N)**.
