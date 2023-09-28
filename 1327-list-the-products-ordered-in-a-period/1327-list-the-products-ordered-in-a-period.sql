# Write your MySQL query statement below

with cte as
(select P.product_id  , P.product_name,O.order_date   ,O.unit 
from Products P
left join Orders O
on 
p.product_id =O.product_id
where date_format(order_date, "%Y-%m") = "2020-02")


select product_name, sum(unit) as unit
from cte
group by product_name
having sum(unit) >= 100