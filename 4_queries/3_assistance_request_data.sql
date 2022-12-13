SELECT teachers.name, students.name AS students_name, assignments.name AS assignments_name, (completed_at - started_at) AS duration 
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY duration;