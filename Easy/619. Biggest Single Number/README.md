# 619. Biggest Single Number

**Category**: Easy  
**Platform**: LeetCode  
**Tags**: SQL, Aggregation, GROUP BY, Filtering, MAX

---

## 🧾 Problem Description

### Table: `MyNumbers`

| Column Name | Type |
|-------------|------|
| num         | int  |

- This table may contain **duplicate values**.
- There is **no primary key**.
- Each row contains a single integer value.

---

## 🎯 Objective

Find the **largest number** that appears **only once** in the table. This number is referred to as the **single number**.

- If there are **no** such single numbers, return `null`.

### Output Table Format

| Column Name | Type |
|-------------|------|
| num         | int  |

---

## ✅ Examples

### Example 1

**Input**:

| num |
|-----|
| 8   |
| 8   |
| 3   |
| 3   |
| 1   |
| 4   |
| 5   |
| 6   |

**Output**:

| num |
|-----|
| 6   |

**Explanation**:
- Numbers that appear only once: `1`, `4`, `5`, `6`
- The largest among them is `6`

---

### Example 2

**Input**:

| num |
|-----|
| 8   |
| 8   |
| 7   |
| 7   |
| 3   |
| 3   |
| 3   |

**Output**:

| num  |
|------|
| null |

**Explanation**:
- All numbers appear more than once → no single number → return `null`

---

## 🧠 Explanation

- This problem requires us to find values that appear **exactly once**.
- We group by `num` and count occurrences.
- Then we filter `COUNT(*) = 1` and take the **maximum** of the result.
