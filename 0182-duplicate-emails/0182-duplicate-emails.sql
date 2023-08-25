# Write your MySQL query statement below
With CTE AS 
(select  email AS Email,count(email) AS CountEmail
from Person 
Group by Email
Having CountEmail >1 )

select Email from CTE