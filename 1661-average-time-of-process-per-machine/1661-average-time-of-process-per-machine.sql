# Write your MySQL query statement below

with cte as
(
  select A.machine_id, A.process_id  , A.activity_type as act_A ,A.timestamp  as start_time, B.activity_type as act_B ,B.timestamp as end_time ,(B.timestamp-A.timestamp) as difference
from Activity A
inner join
Activity B
on
A.machine_id =B.machine_id
and
A.process_id =B.process_id
and
A.activity_type= "start" and  B.activity_type= "end"
)

select machine_id,round(avg(difference),3) as processing_time
from cte
group by machine_id