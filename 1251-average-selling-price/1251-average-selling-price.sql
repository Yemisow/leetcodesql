# Write your MySQL query statement belo
with cte as
(select P.product_id,P.start_date , U.purchase_date ,P.end_date, U.units ,P.price, (U.units *P.price) weighted
from Prices P
left join UnitsSold U
on 
P.product_id = U.product_id 
and

 U.purchase_date  between P.start_date and
  P.end_date)


select product_id ,ifnull(round((sum(weighted)/sum(units)),2) ,0)as average_price
 from cte
group by product_id



