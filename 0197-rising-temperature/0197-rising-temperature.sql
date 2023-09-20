with cte as
(
  select id,recordDate,temperature,subdate(recordDate,1) yesterday,lag(recordDate) over(order by recordDate) previousdate
  ,lag(temperature) over (order by recordDate ) yesterdaytemp
from Weather
)


select id
from cte
where temperature > yesterdaytemp and yesterday=previousdate