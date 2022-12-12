SELECT students.name AS student_name, email, cohorts.name AS cohorts_name
FROM students FULL OUTER JOIN cohorts ON cohort_id = cohorts.id;