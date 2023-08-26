# Write your MySQL query statement below
with cte as
(select *,
ROW_NUMBER() OVER (PARTITION BY actor_id,director_id ORDER BY actor_id,director_id ) AS TIMES
from ActorDirector)


select actor_id ,director_id
from cte 
where TIMES = 3