# Write your MySQL query statement below


select distinct V.customer_id as customer_id, count( V.customer_id) as count_no_trans
from Visits V
left join Transactions T
on 
V.visit_id= T.visit_id
where T.transaction_id is null
group by V.customer_id
order by count_no_trans