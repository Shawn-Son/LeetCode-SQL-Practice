# 620. Not Boring Movies

**Category**: Easy  
**Platform**: LeetCode  
**Tags**: SQL, Filtering, WHERE, Modulo, Ordering

---

## 🧾 Problem Description

### Table: Cinema

| Column Name | Type     |
|-------------|----------|
| id          | int      |
| movie       | varchar  |
| description | varchar  |
| rating      | float    |

- `id` is the **primary key**.
- Each row contains information about a movie's name, genre/description, and its rating.
- `rating` is a float value with 2 decimal places, ranging from 0 to 10.

---

## 🎯 Objective

Return all movies that:
- Have an **odd-numbered id**
- Have a `description` that is **not 'boring'**

The result should be ordered by `rating` in **descending** order.

---

## ✅ Example

### Input:

**Cinema**

| id | movie      | description | rating |
|----|------------|-------------|--------|
| 1  | War        | great 3D    | 8.9    |
| 2  | Science    | fiction     | 8.5    |
| 3  | Irish      | boring      | 6.2    |
| 4  | Ice Song   | Fantacy     | 8.6    |
| 5  | House Card | Interesting | 9.1    |

### Output:

| id | movie      | description | rating |
|----|------------|-------------|--------|
| 5  | House Card | Interesting | 9.1    |
| 1  | War        | great 3D    | 8.9    |

---

## 🔍 Explanation

- Movies with odd `id`s are: 1, 3, 5
- Among them, only `id = 3` has description `'boring'` → Excluded
- The remaining two movies are sorted by `rating` in descending order

---