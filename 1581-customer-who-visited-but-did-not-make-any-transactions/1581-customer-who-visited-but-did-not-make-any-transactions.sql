# Write your MySQL query statement below
with cte as
(select V.customer_id,  T.transaction_id
from Visits V
left join Transactions T
on
V.visit_id = T.visit_id
where T.transaction_id is null)

select customer_id,count(customer_id) count_no_trans
from cte 
group by customer_id