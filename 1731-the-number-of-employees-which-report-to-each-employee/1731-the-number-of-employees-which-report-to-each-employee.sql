# Write your MySQL query statement below


with cte as
(select  E.employee_id , E.name , R.reports_to , R.age
from
Employees E
left join Employees R
on 
E.employee_id =R.reports_to
where  R.employee_id is not null

)
select employee_id,name,count(reports_to) reports_count,round(avg(age)) average_age
from cte 
group by employee_id
order by employee_id