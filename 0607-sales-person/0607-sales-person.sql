# Write your MySQL query statement below
with cte as
(SELECT sales_id
FROM Company C
inner JOIN Orders O
ON C.com_id = O.com_id
WHERE C.name = "RED" )

select name
from SalesPerson
where sales_id not in (select sales_id FROM cte )