# 1767. Find the Subtasks That Did Not Execute

## 📘 Problem

You are given two tables:

### Table: Tasks
| Column Name    | Type |
|----------------|------|
| task_id        | int  |
| subtasks_count | int  |

- `task_id` has unique values.
- Each row indicates `task_id` was divided into `subtasks_count` subtasks labeled from **1** to **subtasks_count**.
- 2 <= subtasks_count <= 20.

### Table: Executed
| Column Name | Type |
|-------------|------|
| task_id     | int  |
| subtask_id  | int  |

- `(task_id, subtask_id)` is unique.
- Each row means that `subtask_id` for that `task_id` was executed successfully.
- It is guaranteed that `subtask_id <= subtasks_count` for each task.

---

## ✅ Task

Report all `(task_id, subtask_id)` pairs that **did NOT execute**.  
Return the result table in any order.

---