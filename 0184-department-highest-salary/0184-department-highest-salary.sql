# Write your MySQL query statement below



select D.name as Department,E.name as Employee, E.salary as Salary
from Department D
 join Employee E
on 
D.id = E.departmentId
where (salary,departmentId) IN (select max(salary),departmentId
from
Employee
group by departmentId)