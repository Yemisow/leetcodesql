# Write your MySQL query statement below


with cte as
(select  num ,lead(num, 1) over() next,lead(num, 2) over() nextnext
from Logs)

select distinct num as ConsecutiveNums
from cte
where num = next  and num = nextnext