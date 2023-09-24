# Write your MySQL query statement below

with cte as
(select user_id , session_id , activity_date , activity_type
from Activity
where activity_date between  date_sub("2019-07-27" ,interval 29 day) and "2019-07-27")


select activity_date as day, count(distinct user_id) active_users
from cte
group by activity_date