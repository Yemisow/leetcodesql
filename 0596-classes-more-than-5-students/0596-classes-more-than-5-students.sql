# Write your MySQL query statement below

with cte as
(select class,count(student) cutstu
from Courses
group by class
having cutstu >=5)

select class from cte
