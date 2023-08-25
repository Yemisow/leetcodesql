# Write your MySQL query statement below

WITH CTE AS
(
select *,
ROW_NUMBER() OVER (PARTITION BY player_id ORDER BY event_date ) AS ROWNO
#ROW_NUMBER() OVER (PARTITION BY event_date ORDER BY event_date) AS EVENTNO;
#LAG(event_date,1) OVER (PARTITION BY player_id ORDER BY player_id) AS DAYBEFORE
from Activity
)

select player_id,event_date as first_login
from CTE
WHERE ROWNO =1


