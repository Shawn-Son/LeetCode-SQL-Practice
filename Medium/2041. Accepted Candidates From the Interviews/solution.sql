-- Write your PostgreSQL query statement below
WITH total AS (SELECT interview_id, SUM(score) AS total_score
FROM Rounds
GROUP bY interview_id)

SELECT c.candidate_id
FROM Candidates c
JOIN total t
ON c.interview_id=t.interview_id
WHERE years_of_exp>=2 AND total_score>15;