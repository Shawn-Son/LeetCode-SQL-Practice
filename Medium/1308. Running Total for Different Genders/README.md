# LeetCode 1308. Running Total for Different Genders

## Problem Description

Given a table `Scores` where each row records a player's name, gender (`'F'` or `'M'`), the day, and their score for that day,  
write a solution to find the **running (cumulative) total score** for each gender on each day (in order).

- For each gender, the total on each day is the **sum of all their scores up to and including that day**.
- Return the result table ordered by `gender` and `day` in ascending order.

---

## Example

### Input

| player_name | gender | day        | score_points |
|-------------|--------|------------|-------------|
| Aron        | F      | 2020-01-01 | 17          |
| Alice       | F      | 2020-01-07 | 23          |
| Bajrang     | M      | 2020-01-07 | 7           |
| Khali       | M      | 2019-12-25 | 11          |
| Slaman      | M      | 2019-12-30 | 13          |
| Joe         | M      | 2019-12-31 | 3           |
| Jose        | M      | 2019-12-18 | 2           |
| Priya       | F      | 2019-12-31 | 23          |
| Priyanka    | F      | 2019-12-30 | 17          |

### Output

| gender | day        | total |
|--------|------------|-------|
| F      | 2019-12-30 | 17    |
| F      | 2019-12-31 | 40    |
| F      | 2020-01-01 | 57    |
| F      | 2020-01-07 | 80    |
| M      | 2019-12-18 | 2     |
| M      | 2019-12-25 | 13    |
| M      | 2019-12-30 | 26    |
| M      | 2019-12-31 | 29    |
| M      | 2020-01-07 | 36    |

---