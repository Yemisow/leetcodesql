# Write your MySQL query statement below
with cte as
(select P.product_id ,P.product_name, P.product_category,O.order_date,O.unit,sum(O.unit) as unitsum

from Products P
join 
Orders O
on
P.product_id = O.product_id
where O.order_date between  "2020-02-01" and "2020-02-29"
group by P.product_id ,P.product_name, P.product_category)

select product_name,unitsum as unit
from cte
where unitsum >= 100