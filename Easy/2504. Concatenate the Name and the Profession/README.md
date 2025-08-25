# LeetCode 2504. Concatenate the Name and the Profession

## Problem Statement

Given the following table:

### Person

| Column Name | Type    |
|-------------|---------|
| person_id   | int     |
| name        | varchar |
| profession  | ENUM    |

- `person_id` is the primary key (unique values).
- Each row contains a person's ID, name, and profession.
- The `profession` column is one of: ('Doctor', 'Singer', 'Actor', 'Player', 'Engineer', 'Lawyer').

---

## Task

Write a SQL query to **report each person's name followed by the first letter of their profession enclosed in parentheses**.  
The result must be ordered by `person_id` in **descending order**.

---

## Example

### Input

**Person table:**

| person_id | name  | profession |
|-----------|-------|------------|
| 1         | Alex  | Singer     |
| 3         | Alice | Actor      |
| 2         | Bob   | Player     |
| 4         | Messi | Doctor     |
| 6         | Tyson | Engineer   |
| 5         | Meir  | Lawyer     |

### Output

| person_id | name     |
|-----------|----------|
| 6         | Tyson(E) |
| 5         | Meir(L)  |
| 4         | Messi(D) |
| 3         | Alice(A) |
| 2         | Bob(P)   |
| 1         | Alex(S)  |

---

## Explanation

- **Tyson (Engineer)** → `"Tyson(E)"`
- **Meir (Lawyer)** → `"Meir(L)"`
- **Messi (Doctor)** → `"Messi(D)"`
- **Alice (Actor)** → `"Alice(A)"`
- **Bob (Player)** → `"Bob(P)"`
- **Alex (Singer)** → `"Alex(S)"`

Note: There should be **no whitespace** between the name and the parenthesis.

---