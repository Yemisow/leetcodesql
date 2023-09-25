# Write your MySQL query statement below
with cte as
(
select person_name, sum(weight)over(order by turn asc) weig
from Queue)


select person_name
from cte
where weig <=1000
order by weig desc
limit 1