# 2989. Class Performance

## Problem Description

You are given a DataFrame named `Scores` with the following columns:
- `student_id` (int)
- `student_name` (string)
- `assignment1` (int)
- `assignment2` (int)
- `assignment3` (int)

Each row contains a student’s scores on three assignments.

Write a solution to calculate the **difference in the total score** (sum of all 3 assignments) **between the highest and lowest scoring students**.

Return the result table in any order.

---

## Example

**Input DataFrame:**

| student_id | student_name | assignment1 | assignment2 | assignment3 |
|------------|--------------|-------------|-------------|-------------|
| 309        | Owen         | 88          | 47          | 87          |
| 321        | Claire       | 98          | 95          | 37          |
| 338        | Julian       | 100         | 64          | 43          |
| 423        | Peyton       | 60          | 44          | 47          |
| 896        | David        | 32          | 37          | 50          |
| 235        | Camila       | 31          | 53          | 69          |

**Output DataFrame:**

| difference_in_score |
|---------------------|
| 111                 |

**Explanation:**
- Owen: 88 + 47 + 87 = 222  
- Claire: 98 + 95 + 37 = 230  
- Julian: 100 + 64 + 43 = 207  
- Peyton: 60 + 44 + 47 = 151  
- David: 32 + 37 + 50 = 119  
- Camila: 31 + 53 + 69 = 153  
- Highest total: 230 (Claire)  
- Lowest total: 119 (David)  
- Difference: 230 - 119 = 111

---