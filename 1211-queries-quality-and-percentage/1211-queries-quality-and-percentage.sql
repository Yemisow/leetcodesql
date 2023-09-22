# Write your MySQL query statement below


select query_name , round(avg( rating/position),2) as quality,round(sum(case when rating < 3 then 1 else 0 end) *100/count(query_name),2) poor_query_percentage
from Queries
group by query_name