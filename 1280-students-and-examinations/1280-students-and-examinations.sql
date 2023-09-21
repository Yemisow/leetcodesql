# Write your MySQL query statement below

 
with cte as
(select student_id,student_name,subject_name
from Students S
cross join Subjects Sub)


select C.student_id,C.student_name,C.subject_name,count(E.subject_name) attended_exams
from cte C
left join
Examinations E
on
C.student_id =E.student_id and C.subject_name =E.subject_name
group by C.student_id,C.student_name,C.subject_name
order by C.student_id,C.subject_name