# Write your MySQL query statement below
select A.employee_id , A.name, count(B.reports_to) as reports_count ,  round(avg(B.age),0) as average_age 
from
Employees A
left join
Employees B
on
A.employee_id=B.reports_to
where B.reports_to is not null
group by A.employee_id
order by employee_id



#(select count(reports_to) as reports_count , round(avg(age )) as average_age
#from Employees
#where reports_to >1
#group by reports_to)