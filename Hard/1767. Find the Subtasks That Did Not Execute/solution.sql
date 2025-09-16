-- Write your PostgreSQL query statement below
SELECT t.task_id, s.subtask_id
FROM Tasks t
CROSS JOIN LATERAL generate_series(1,t.subtasks_count) AS s(subtask_id)
LEFT JOIN Executed e
ON t.task_id = e.task_id AND s.subtask_id = e.subtask_id
WHERE e.subtask_id IS NULL;