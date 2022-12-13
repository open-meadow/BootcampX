-- total number of students for each cohort
-- SELECT COUNT(students)
-- FROM students
-- JOIN cohorts ON cohorts.id = cohort_id
-- GROUP BY cohorts;

SELECT AVG(totals_table.total_students) AS average_students
FROM (
  SELECT COUNT(students) as total_students
  FROM students
  JOIN cohorts ON cohorts.id = cohort_id
  GROUP BY cohorts
) as totals_table;