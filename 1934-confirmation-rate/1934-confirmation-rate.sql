# Write your MySQL query statement below

with cte as
(select S.user_id,C.action,(case when C.action ="confirmed" then 1 else 0 end) as con
from Signups S
left join Confirmations C
on
S.user_id = C.user_id )


select user_id, round(sum(con)/count(con),2) as confirmation_rate
from cte
group by user_id


