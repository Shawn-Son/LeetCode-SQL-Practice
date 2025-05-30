# 550. Game Play Analysis IV

**Difficulty**: Medium  
**Topics**: SQL, Date Comparison, Aggregation, Filtering  

---

## 🧠 Problem Summary

You are given an `Activity` table that records when players log in to a game. Each record contains the `player_id`, the `device_id`, the date of login (`event_date`), and the number of games played on that day.

Your task is to calculate the **fraction of players** who **logged in again on the day after** their **first login date**, rounded to two decimal places.

---

## 📘 Table Structure

### `Activity`

| Column Name  | Type | Description                                  |
|--------------|------|----------------------------------------------|
| `player_id`  | int  | Unique identifier for the player             |
| `device_id`  | int  | Identifier of the device used for login      |
| `event_date` | date | Date when the player logged in               |
| `games_played` | int | Number of games played during the session    |

- `(player_id, event_date)` is the **primary key**.
- A player can have multiple login records, but not more than once per day.

---

## ✅ Objective

Return a table with a single value:

| Column Name | Description                                                      |
|-------------|------------------------------------------------------------------|
| `fraction`  | Fraction of players who logged in again the day after their first login, rounded to 2 decimal places |

---

## 🧾 Example

### Input

#### `Activity` Table

| player_id | device_id | event_date | games_played |
|-----------|-----------|------------|--------------|
| 1         | 2         | 2016-03-01 | 5            |
| 1         | 2         | 2016-03-02 | 6            |
| 2         | 3         | 2017-06-25 | 1            |
| 3         | 1         | 2016-03-02 | 0            |
| 3         | 4         | 2018-07-03 | 5            |

### Output

| fraction |
|----------|
| 0.33     |

### Explanation

- Player 1: Logged in on 03-01 and 03-02 → ✅
- Player 2: Only one login → ❌
- Player 3: Multiple logins but not consecutive from first login → ❌

Only 1 out of 3 players qualifies → `1 / 3 = 0.33`