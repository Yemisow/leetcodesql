# Write your MySQL query statement below

with cte as
(select P.product_id,S.year,S.quantity,S.price,rank()over(partition by product_id order by  year) orderpos
from Product P
left join  Sales S
on 
S.product_id = P.product_id
)

select product_id , year as first_year , quantity , price
from cte
where orderpos = 1  and year is not null