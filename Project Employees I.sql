SELECT 
  project_id,
  ifnull(round(avg(experience_years),2),0) AS average_years

FROM Project p
LEFT JOIN Employee e
ON p.employee_id = e.employee_id
GROUP BY project_id
