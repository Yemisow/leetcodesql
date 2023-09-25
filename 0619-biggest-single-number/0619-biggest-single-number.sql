# Write your MySQL query statement below

with cte as
(select num,count(num) cnum
from MyNumbers
group by num)

select max(num) as num
from cte
where cnum = 1