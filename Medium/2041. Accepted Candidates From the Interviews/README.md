# LeetCode 2041. Accepted Candidates From the Interviews

## Problem Statement

You are given the following tables:

### Candidates

| Column Name  | Type    |
|--------------|---------|
| candidate_id | int     |
| name         | varchar |
| years_of_exp | int     |
| interview_id | int     |

- `candidate_id` is the primary key.  
- Each row indicates the candidate’s name, their years of experience, and the interview ID they belong to.

### Rounds

| Column Name  | Type |
|--------------|------|
| interview_id | int  |
| round_id     | int  |
| score        | int  |

- `(interview_id, round_id)` is the primary key.  
- Each row shows the score of one round in an interview.  

---

## Task

Write a SQL query to **report the IDs of candidates** who satisfy the following conditions:
1. Have **at least 2 years of experience**.  
2. The **sum of scores across all their interview rounds** is strictly greater than **15**.  

Return the result table in any order.

---

## Example

### Input

**Candidates table:**

| candidate_id | name    | years_of_exp | interview_id |
|--------------|---------|--------------|--------------|
| 11           | Atticus | 1            | 101          |
| 9            | Ruben   | 6            | 104          |
| 6            | Aliza   | 10           | 109          |
| 8            | Alfredo | 0            | 107          |

**Rounds table:**

| interview_id | round_id | score |
|--------------|----------|-------|
| 109          | 3        | 4     |
| 101          | 2        | 8     |
| 109          | 4        | 1     |
| 107          | 1        | 3     |
| 104          | 3        | 6     |
| 109          | 1        | 4     |
| 104          | 4        | 7     |
| 104          | 1        | 2     |
| 109          | 2        | 1     |
| 104          | 2        | 7     |
| 107          | 2        | 3     |
| 101          | 1        | 8     |

### Output

| candidate_id |
|--------------|
| 9            |

---

## Explanation

- **Candidate 11 (Atticus)**: Total score = 16, but has only 1 year of experience → Not included.  
- **Candidate 9 (Ruben)**: Total score = 22, has 6 years of experience → ✅ Included.  
- **Candidate 6 (Aliza)**: Total score = 10, has 10 years of experience → Not included (score too low).  
- **Candidate 8 (Alfredo)**: Total score = 6, has 0 years of experience → Not included.  

---
