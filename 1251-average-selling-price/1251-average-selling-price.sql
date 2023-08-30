# Write your MySQL query statement below

select P.product_id,round(sum(P.price*U.units) /sum(units),2) as average_price
from Prices P
inner join
UnitsSold U
on 
P.product_id= U.product_id and
U.purchase_date between P.start_date and P.end_date
group by  P.product_id