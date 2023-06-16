SELECT cohorts.name as chort_name, count(*) as student_count
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY chort_name
HAVING count(*) >= 18
ORDER BY student_count;