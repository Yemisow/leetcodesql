

with cte as 
(select buyer_id,count(buyer_id) as purchases
from 
Orders
where YEAR(order_date)="2019"
GROUP BY buyer_id)
select U.user_id as buyer_id ,U.join_date,ifnull(C.purchases,0) as orders_in_2019
from Users U
left join cte C
on 
U.user_id=C.buyer_id