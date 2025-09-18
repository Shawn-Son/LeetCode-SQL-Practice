# 511. Game Play Analysis I

## 📘 Problem

You are given the table **Activity**:

| Column Name  | Type |
|--------------|------|
| player_id    | int  |
| device_id    | int  |
| event_date   | date |
| games_played | int  |

- `(player_id, event_date)` is the primary key.
- Each row represents a player's login activity for a given day, including device used and games played.

---

## ✅ Task

Find the **first login date** (earliest `event_date`) for each player.  
Return the result table in any order.

---