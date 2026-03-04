-- Write your PostgreSQL query statement below
-- tp
-- count(managerID)>=5

WITH ref AS(
    SELECT
        managerId,
        COUNT(managerId) AS cnt
    FROM Employee
    GROUP BY managerId
    HAVING COUNT(managerId) >= 5
)

SELECT name
FROM ref r
INNER JOIN Employee AS e
ON r.managerId = e.id