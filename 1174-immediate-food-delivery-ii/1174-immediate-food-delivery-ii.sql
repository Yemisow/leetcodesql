# Write your MySQL query statement below


with cte as
(select *,(case when order_date=customer_pref_delivery_date then "immediate" else "scheduled" end) immshe ,
row_number()over(partition by customer_id order by order_date) ordpos
from Delivery)

select round(sum(case when immshe = "immediate" then 1 else 0 end) * 100/count(immshe),2) immediate_percentage
from cte
where ordpos = 1