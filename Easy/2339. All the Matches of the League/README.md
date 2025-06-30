# 2339. All the Matches of the League

## Problem Description

You are given a DataFrame named `Teams` with the following column:
- `team_name` (string): The name of a team (all names are unique).

Write a solution to report **all possible matches of the league**.  
- Every two distinct teams play **two matches with each other**:  
  - Once as home team, once as away team.

Return the result as a DataFrame with columns:  
`home_team`, `away_team`  
The order of the result does not matter.

---

## Example

**Input DataFrame:**

| team_name   |
|-------------|
| Leetcode FC |
| Ahly SC     |
| Real Madrid |

**Output DataFrame:**

| home_team    | away_team   |
|--------------|-------------|
| Real Madrid  | Leetcode FC |
| Real Madrid  | Ahly SC     |
| Leetcode FC  | Real Madrid |
| Leetcode FC  | Ahly SC     |
| Ahly SC      | Real Madrid |
| Ahly SC      | Leetcode FC |

**Explanation:**  
All possible matches are included, with each pair of teams playing twice:  
once as home team, and once as away team.

---