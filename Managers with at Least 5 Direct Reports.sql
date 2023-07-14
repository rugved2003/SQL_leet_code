SELECT e.name
FROM Employee e
INNER JOIN Employee m
On e.id = m.managerId
GROUP BY e.name
HAVING COUNT( m.id) >= 5
