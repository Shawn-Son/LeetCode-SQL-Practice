# 3051. Find Candidates for Data Scientist Position

## 📘 Problem

You are given the table **Candidates**:

| Column Name  | Type    |
|--------------|---------|
| candidate_id | int     |
| skill        | varchar |

- `(candidate_id, skill)` is the primary key.
- Each row contains a candidate and one of their skills.

---

## ✅ Task

Find candidates who have **all three required skills** for a Data Scientist position:

- `Python`
- `Tableau`
- `PostgreSQL`

Return the result table ordered by `candidate_id` in ascending order.

---

## 🔎 Example

### Input
+—————+–––––––+
| candidate_id  | skill        |
+—————+–––––––+
| 123           | Python       |
| 234           | R            |
| 123           | Tableau      |
| 123           | PostgreSQL   |
| 234           | PowerBI      |
| 234           | SQL Server   |
| 147           | Python       |
| 147           | Tableau      |
| 147           | Java         |
| 147           | PostgreSQL   |
| 256           | Tableau      |
| 102           | DataAnalysis |
+—————+–––––––+

---
### Output

+–––––––+
| candidate_id |
+–––––––+
| 123          |
| 147          |
+–––––––+

### Explanation
- Candidate **123**: Has Python, Tableau, PostgreSQL ✅
- Candidate **147**: Has Python, Tableau, PostgreSQL (plus Java — still valid) ✅
- Candidate **234**: Missing required skills ❌
- Candidate **256**: Only Tableau ❌

---