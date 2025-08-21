# 1699. Number of Calls Between Two Persons

## 📝 Problem Statement
You are given a table **Calls** with the following schema:

| Column Name | Type |
|-------------|------|
| from_id     | int  |
| to_id       | int  |
| duration    | int  |

- Each row records a phone call made between two persons: `from_id` and `to_id`.
- `from_id != to_id`.
- The table may contain duplicates.
- We want to calculate for each pair of distinct persons `(person1, person2)` where `person1 < person2`:
  - The total number of calls between them (`call_count`).
  - The total duration of calls (`total_duration`).

The result should return **one row per unique pair**.

---

## 📊 Example

### Input
Calls table:
+———+—––+–––––+
| from_id | to_id | duration |
+———+—––+–––––+
| 1       | 2     | 59       |
| 2       | 1     | 11       |
| 1       | 3     | 20       |
| 3       | 4     | 100      |
| 3       | 4     | 200      |
| 3       | 4     | 200      |
| 4       | 3     | 499      |
+———+—––+–––––+
### Output
+———+———+————+––––––––+
| person1 | person2 | call_count | total_duration |
+———+———+————+––––––––+
| 1       | 2       | 2          | 70             |
| 1       | 3       | 1          | 20             |
| 3       | 4       | 4          | 999            |
+———+———+————+––––––––+

### Explanation
- Users `1` and `2` had 2 calls, total duration `59 + 11 = 70`.
- Users `1` and `3` had 1 call, total duration `20`.
- Users `3` and `4` had 4 calls, total duration `100 + 200 + 200 + 499 = 999`.

---

## 💡 Approach

1. Normalize each call pair so that the smaller ID is always `person1` and the larger ID is always `person2`.
   - This avoids duplicates like `(1,2)` and `(2,1)` being counted separately.
   - We can use `LEAST(from_id, to_id)` and `GREATEST(from_id, to_id)` for this.
2. Group by `(person1, person2)` to count calls and sum durations.
3. Return the result.

---
