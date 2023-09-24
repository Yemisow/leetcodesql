# Write your MySQL query statement below
with cte as
(select *,row_number()over(partition by player_id order by event_date ) loginord,
date_sub(event_date, INTERVAL 1 DAY) evensub,
lag(event_date) over(partition by player_id order by event_date ) yesterday
from Activity)


select 
round(count(player_id)/(select count( distinct player_id ) from Activity),2) fraction
from cte
where loginord = 2 and evensub= yesterday