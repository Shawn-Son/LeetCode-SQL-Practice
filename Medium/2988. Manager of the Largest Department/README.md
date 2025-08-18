# LeetCode 2988. Manager of the Largest Department

## Problem Statement

Given the following table:

### Employees

| Column Name | Type    |
|-------------|---------|
| emp_id      | int     |
| emp_name    | varchar |
| dep_id      | int     |
| position    | varchar |

- `emp_id` is the column of unique values for this table.  
- Each row contains the `emp_id`, `emp_name`, `dep_id`, and `position`.  

---

## Task

Write a SQL query to **find the name of the manager** from the largest department.  

- A department’s size is measured by the number of employees in it.  
- If multiple departments tie for the largest size, return the managers from all of those departments.  

Return the result table sorted by `dep_id` in ascending order.

---

## Example

### Input

**Employees table:**

| emp_id | emp_name | dep_id | position      |
|--------|----------|--------|---------------|
| 156    | Michael  | 107    | Manager       |
| 112    | Lucas    | 107    | Consultant    |
| 8      | Isabella | 101    | Manager       |
| 160    | Joseph   | 100    | Manager       |
| 80     | Aiden    | 100    | Engineer      |
| 190    | Skylar   | 100    | Freelancer    |
| 196    | Stella   | 101    | Coordinator   |
| 167    | Audrey   | 100    | Consultant    |
| 97     | Nathan   | 101    | Supervisor    |
| 128    | Ian      | 101    | Administrator |
| 81     | Ethan    | 107    | Administrator |

### Output

| manager_name | dep_id |
|--------------|--------|
| Joseph       | 100    |
| Isabella     | 101    |

---

## Explanation

- Department **100** has 4 employees.  
- Department **101** also has 4 employees.  
- Department **107** has only 3 employees.  

Since departments 100 and 101 tie as the largest, their managers (`Joseph` and `Isabella`) are returned.  
The result is ordered by `dep_id` in ascending order.