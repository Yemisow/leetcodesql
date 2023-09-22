# Write your MySQL query statement below

select R.contest_id ,round(count(U.user_id  ) *100/(select count(user_id) from Users ),2) percentage
from Register R
left join  Users U 
on 
U.user_id = R.user_id
group by R.contest_id
order by percentage desc,contest_id asc
