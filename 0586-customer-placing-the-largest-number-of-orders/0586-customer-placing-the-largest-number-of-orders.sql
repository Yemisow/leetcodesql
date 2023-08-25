# Write your MySQL query statement below
WITH CTE AS
(
SELECT customer_number,COUNT(customer_number) CUN
FROM Orders
GROUP BY customer_number
)

SELECT customer_number
FROM CTE
WHERE CUN = (select max(cun) from cte)
