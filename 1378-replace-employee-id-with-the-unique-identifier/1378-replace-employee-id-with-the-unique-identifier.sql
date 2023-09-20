# Write your MySQL query statement below

select EUNI.unique_id, E.name
from Employees E
left join
EmployeeUNI EUNI
on 
E.id = EUNI.id