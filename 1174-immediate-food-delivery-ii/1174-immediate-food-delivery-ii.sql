# Write your MySQL query statement below
with cte as
(select delivery_id , customer_id ,order_date ,customer_pref_delivery_date,
row_number() over (partition by customer_id order by customer_id,order_date) as rownum
from Delivery
)
select round(count(customer_id) /(
 select count(customer_id) 
from cte
where rownum=1 
) *100 ,2) as immediate_percentage
from cte
where order_date = customer_pref_delivery_date and rownum=1
