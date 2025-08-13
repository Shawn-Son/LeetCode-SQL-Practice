# 534. Game Play Analysis III

## Problem Description

You are given a table `Activity` with the following columns:

| Column Name  | Type    |
|--------------|---------|
| player_id    | int     |
| device_id    | int     |
| event_date   | date    |
| games_played | int     |

- **Primary Key:** `(player_id, event_date)` (unique combination)
- Each row records the number of games a player played on a specific date using a device.

Your task:
- For **each player and date**, compute the **cumulative total number of games** played by that player up to that date (inclusive).
- Only include the dates when the player actually logged in.

---

## Example

### Input

**Activity** table:
| player_id | device_id | event_date | games_played |
|-----------|-----------|------------|--------------|
| 1         | 2         | 2016-03-01 | 5            |
| 1         | 2         | 2016-05-02 | 6            |
| 1         | 3         | 2017-06-25 | 1            |
| 3         | 1         | 2016-03-02 | 0            |
| 3         | 4         | 2018-07-03 | 5            |

### Output

| player_id | event_date | games_played_so_far |
|-----------|------------|---------------------|
| 1         | 2016-03-01 | 5                   |
| 1         | 2016-05-02 | 11                  |
| 1         | 2017-06-25 | 12                  |
| 3         | 2016-03-02 | 0                   |
| 3         | 2018-07-03 | 5                   |

---