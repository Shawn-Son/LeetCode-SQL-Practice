# LeetCode 1783. Grand Slam Titles

## Problem Statement

Given the following tables:

### Players

| Column Name | Type    |
|-------------|---------|
| player_id   | int     |
| player_name | varchar |

- `player_id` is the primary key.
- Each row contains the name and ID of a tennis player.

### Championships

| Column Name | Type    |
|-------------|---------|
| year        | int     |
| Wimbledon   | int     |
| Fr_open     | int     |
| US_open     | int     |
| Au_open     | int     |

- `year` is the primary key.
- Each row contains the player IDs of the winners for each of the four Grand Slam tournaments in that year.

---

## Task

Write a SQL query to report the **number of Grand Slam tournaments won by each player**.  
**Do not include** players who did not win any tournament.

Return the result table in any order.

---

## Example

### Input

**Players**

| player_id | player_name |
|-----------|-------------|
| 1         | Nadal       |
| 2         | Federer     |
| 3         | Novak       |

**Championships**

| year | Wimbledon | Fr_open | US_open | Au_open |
|------|-----------|---------|---------|---------|
| 2018 | 1         | 1       | 1       | 1       |
| 2019 | 1         | 1       | 2       | 2       |
| 2020 | 2         | 1       | 2       | 2       |

### Output

| player_id | player_name | grand_slams_count |
|-----------|-------------|-------------------|
| 2         | Federer     | 5                 |
| 1         | Nadal       | 7                 |

---