# Write your MySQL query statement below

with cte as
(select E.id  , E.name  ,E.department   , M.managerId
from Employee E
left join Employee M
on 
E.id = M.managerId)


select name
from cte 
group by id  , name  , department
having count(managerId) >= 5