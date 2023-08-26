# Write your MySQL query statement below



SELECT P.product_name,S.year,S.price
from Sales S
 INNER join
Product P
on
S.product_id = P.product_id