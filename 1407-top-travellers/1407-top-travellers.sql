# Write your MySQL query statement below
select U.name,sum(ifnull(R.distance,0))  as travelled_distance
from Users U
left Join 
Rides R
on 
U.id= R.user_id
group by user_id
order by travelled_distance desc ,name


