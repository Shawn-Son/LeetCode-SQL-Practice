# 596. Classes More Than 5 Students

**Category**: Easy  
**Platform**: LeetCode  
**Tags**: SQL, Aggregation, COUNT, GROUP BY  

---

## 🧾 Problem Description

### Table: `Courses`

| Column Name | Type    |
|-------------|---------|
| student     | varchar |
| class       | varchar |

- `(student, class)` is the **primary key**.
- Each row represents a student enrolled in a specific class.
- A student can enroll in only one class once, and a class can have many students.

---

## 🎯 Objective

Write an SQL query to find all classes that have **at least five students enrolled**.

- The result should only include class names.
- The output can be returned in any order.

---

## ✅ Example

### Input

**Courses**

| student | class    |
|---------|----------|
| A       | Math     |
| B       | English  |
| C       | Math     |
| D       | Biology  |
| E       | Math     |
| F       | Computer |
| G       | Math     |
| H       | Math     |
| I       | Math     |

### Output

| class |
|--------|
| Math   |

---

## 🔍 Explanation

- `Math` has **6** students → included ✅
- Other classes (`English`, `Biology`, `Computer`) have only 1 student each → excluded ❌

---