# Write your MySQL query statement below
SELECT a.name as Employee
FROM Employee AS a
left join
 Employee AS b
 on
 a.managerId =b.Id
 where a.salary > b.salary