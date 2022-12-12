SELECT SUM(duration)
FROM  assignment_submissions 
  JOIN students ON assignment_submissions.student_id = students.id
  JOIN cohorts ON cohort_id = cohorts.id 
WHERE cohorts.name = 'FEB12';