# Write your MySQL query statement below
#with cte as
#(select user_id  , sum(case
#when action ="confirmed" then 1
#else 0
#end
#) /count(action) as confirmation_rate
#from Confirmations
#group by user_id)

#select S.user_id, ROUND(C.confirmation_rate,2) as confirmation_rate
#from Signups S
#left join cte C
#on 
#S.user_id = C.user_id



select S.user_id,  
case when C.action is null then 0.00
else round(sum(C.action="confirmed" )/count(C.action),2) end as confirmation_rate
from Signups S
left join Confirmations C
on 
S.user_id = C.user_id
group by S.user_id