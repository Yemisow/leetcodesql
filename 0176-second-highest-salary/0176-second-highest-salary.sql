# Write your MySQL query statement below
with cte as
(
select id,salary, dense_rank()over(order by salary desc) ras
from Employee)


select ifnull((select salary from cte where ras = 2 limit 1),null) SecondHighestSalary