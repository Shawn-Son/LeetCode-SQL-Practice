-- Write your PostgreSQL query statement below
SELECT candidate_id
FROM Candidates
GROUP BY candidate_id
HAVING STRING_AGG(skill, ', ' ORDER BY skill) LIKE '%PostgreSQL, Python, Tableau%'
ORDER BY candidate_id;