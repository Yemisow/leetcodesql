with cte as
(select *,ADDDATE(recordDate,INTERVAL-1 DAY) as yesterday,LAG(temperature) Over (order by recordDate) as yesterdaytemp,lAG(recordDate) Over (order by recordDate) as previousday
from Weather)
 
 select id from cte
 where yesterday = previousday
 and temperature> yesterdaytemp