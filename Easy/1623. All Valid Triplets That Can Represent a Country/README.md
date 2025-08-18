# LeetCode 1623. All Valid Triplets That Can Represent a Country

## Problem Statement

Given the following tables:

### SchoolA

| Column Name  | Type    |
|--------------|---------|
| student_id   | int     |
| student_name | varchar |

- `student_id` is the column with unique values for this table.  
- Each row contains the name and the id of a student in School A.  
- All `student_name` values are distinct.  

### SchoolB

| Column Name  | Type    |
|--------------|---------|
| student_id   | int     |
| student_name | varchar |

- `student_id` is the column with unique values for this table.  
- Each row contains the name and the id of a student in School B.  
- All `student_name` values are distinct.  

### SchoolC

| Column Name  | Type    |
|--------------|---------|
| student_id   | int     |
| student_name | varchar |

- `student_id` is the column with unique values for this table.  
- Each row contains the name and the id of a student in School C.  
- All `student_name` values are distinct.  

---

## Task

There is a country with three schools, where each student is enrolled in exactly one school.  
The country is joining a competition and wants to select one student from each school to represent the country such that:

- `member_A` is selected from SchoolA,  
- `member_B` is selected from SchoolB,  
- `member_C` is selected from SchoolC, and  
- The selected students' **names and IDs are pairwise distinct** (i.e. no two students share the same name, and no two students share the same ID).  

Write a SQL query to find all possible triplets representing the country under the given constraints.  

Return the result table in **any order**.  

---

## Example

### Input

**SchoolA table:**

| student_id | student_name |
|------------|--------------|
| 1          | Alice        |
| 2          | Bob          |

**SchoolB table:**

| student_id | student_name |
|------------|--------------|
| 3          | Tom          |

**SchoolC table:**

| student_id | student_name |
|------------|--------------|
| 3          | Tom          |
| 2          | Jerry        |
| 10         | Alice        |

### Output

| member_A | member_B | member_C |
|----------|----------|----------|
| Alice    | Tom      | Jerry    |
| Bob      | Tom      | Alice    |

---

## Explanation

- (Alice, Tom, Tom) → ❌ Rejected (same name and ID between member_B and member_C)  
- (Alice, Tom, Jerry) → ✅ Valid triplet  
- (Alice, Tom, Alice) → ❌ Rejected (same name between member_A and member_C)  
- (Bob, Tom, Tom) → ❌ Rejected (same name and ID between member_B and member_C)  
- (Bob, Tom, Jerry) → ❌ Rejected (same ID between member_A and member_C)  
- (Bob, Tom, Alice) → ✅ Valid triplet  