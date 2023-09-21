# Write your MySQL query statement below
with cte as
(select A.machine_id ,A.process_id ,A.activity_type startact ,B.activity_type endact,
A.timestamp start_time , B.timestamp end_time

from Activity A
join Activity B
on 
A.machine_id = B.machine_id
 and A.process_id = B.process_id

 and A.activity_type != B.activity_type
 and
A.timestamp < B.timestamp)



select  machine_id,round(avg(end_time-start_time),3) processing_time
from cte
group by
 machine_id