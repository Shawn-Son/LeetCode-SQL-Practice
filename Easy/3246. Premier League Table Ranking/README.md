# LeetCode 3246. Premier League Table Ranking

## 📌 Problem Statement
You are given a table `TeamStats` containing the statistics for football teams in a league.

### **Table: TeamStats**
| Column Name      | Type    | Description |
|------------------|---------|-------------|
| team_id          | int     | Unique identifier for each team |
| team_name        | varchar | Name of the team |
| matches_played   | int     | Total matches played |
| wins             | int     | Number of matches won |
| draws            | int     | Number of matches drawn |
| losses           | int     | Number of matches lost |

`team_id` is the primary key.

---

## 🎯 Goal
Calculate **points** and **rank** for each team based on:
- **3 points** for a win
- **1 point** for a draw
- **0 points** for a loss

**Rules:**
- Teams with the same number of points **share the same rank**.
- Order the results **by points (descending)**, then **by team_name (ascending)**.

---

## 💡 Example
### **Input**
**TeamStats**
| team_id | team_name       | matches_played | wins | draws | losses |
|---------|-----------------|----------------|------|-------|--------|
| 1       | Manchester City | 10             | 6    | 2     | 2      |
| 2       | Liverpool       | 10             | 6    | 2     | 2      |
| 3       | Chelsea         | 10             | 5    | 3     | 2      |
| 4       | Arsenal         | 10             | 4    | 4     | 2      |
| 5       | Tottenham       | 10             | 3    | 5     | 2      |

### **Output**
| team_id | team_name       | points | position |
|---------|-----------------|--------|----------|
| 2       | Liverpool       | 20     | 1        |
| 1       | Manchester City | 20     | 1        |
| 3       | Chelsea         | 18     | 3        |
| 4       | Arsenal         | 16     | 4        |
| 5       | Tottenham       | 14     | 5        |

---