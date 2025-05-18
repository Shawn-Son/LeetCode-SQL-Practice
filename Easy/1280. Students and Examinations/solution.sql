WITH st_su AS (
    SELECT st.student_id, st.student_name, su.subject_name
    FROM Students st
    CROSS JOIN Subjects su
)

SELECT s.student_id, s.student_name, s.subject_name, COALESCE(COUNT(e.subject_name),0) AS attended_exams
FROM st_su s
LEFT JOIN Examinations e
ON s.student_id=e.student_id AND s.subject_name=e.subject_name
GROUP BY s.student_id, s.student_name, s.subject_name
ORDER BY s.student_id, s.subject_name;