# 1148. Article Views I

**Category**: Easy  
**Platform**: LeetCode  
**Tags**: SQL, Filtering, Self-comparison, DISTINCT

---

## 🧾 Problem Description

Table: Views

| Column Name | Type |
|-------------|------|
| article_id  | int  |
| author_id   | int  |
| viewer_id   | int  |
| view_date   | date |

- There is **no primary key** — duplicate rows may exist.
- Each row means someone (`viewer_id`) viewed an article written by `author_id` on a specific date.
- Note: `author_id = viewer_id` means the author viewed their own article.

---

## 🎯 Goal

> Return the IDs of authors who viewed **their own articles**.

- Result should contain a column `id`.
- No duplicates allowed.

## 🔍 Explanation
- WHERE author_id = viewer_id: Filters rows where the author viewed their own work.
- DISTINCT author_id: Ensures no duplicate IDs are returned.
- AS id: Renames the output column to match the required format.
