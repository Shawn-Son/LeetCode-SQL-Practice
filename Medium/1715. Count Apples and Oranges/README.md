# 1715. Count Apples and Oranges

## 📘 Problem

You are given two tables:

### Table: Boxes
| Column Name  | Type |
|--------------|------|
| box_id       | int  |
| chest_id     | int  |
| apple_count  | int  |
| orange_count | int  |

- `box_id` is unique.
- Each row stores counts of apples and oranges directly inside a box.
- A box **may contain a chest**, referenced by `chest_id`.

### Table: Chests
| Column Name  | Type |
|--------------|------|
| chest_id     | int  |
| apple_count  | int  |
| orange_count | int  |

- `chest_id` is unique.
- Each row stores counts of apples and oranges inside a chest.

---

## ✅ Task

Count the **total number of apples and oranges** across all boxes.  
If a box contains a chest, **include the chest’s apple and orange counts** in the total.

Return one row with two columns: `apple_count`, `orange_count`