# 1527. Patients With a Condition

**Category**: Easy  
**Platform**: LeetCode  
**Tags**: SQL, String Matching, Pattern Matching, Regular Expressions

---

## 🧾 Problem Description

### Table: `Patients`

| Column Name  | Type    |
|--------------|---------|
| patient_id   | int     |
| patient_name | varchar |
| conditions   | varchar |

- `patient_id` is the primary key.
- The `conditions` column contains 0 or more medical condition codes, separated by **spaces**.
- This table stores the list of patients and their diagnosed conditions.

---

## 🎯 Objective

Write a SQL query to return the `patient_id`, `patient_name`, and `conditions` of all patients who have **Type I Diabetes**, which is identified by condition codes that **start with `'DIAB1'`**.

- The `DIAB1` code prefix may appear **anywhere in the conditions string**, but must represent a **whole word** (i.e., not as a substring of another word).
- Return the result in any order.

---

## ✅ Example

### Input

**Patients**

| patient_id | patient_name | conditions   |
|------------|--------------|--------------|
| 1          | Daniel       | YFEV COUGH   |
| 2          | Alice        |              |
| 3          | Bob          | DIAB100 MYOP |
| 4          | George       | ACNE DIAB100 |
| 5          | Alain        | DIAB201      |

### Output

| patient_id | patient_name | conditions   |
|------------|--------------|--------------|
| 3          | Bob          | DIAB100 MYOP |
| 4          | George       | ACNE DIAB100 |

---

## 🧠 Explanation

- Patient 3 (Bob): has `"DIAB100"` at the beginning of the string ✅  
- Patient 4 (George): has `"DIAB100"` after another condition ✅  
- Patient 5 (Alain): has `"DIAB201"` → this starts with `'DIAB2'` ❌  
- Patient 2 (Alice): empty conditions ❌  
- Patient 1 (Daniel): unrelated conditions ❌

Only patients with a **whole-word condition that starts with `DIAB1`** should be returned.

---