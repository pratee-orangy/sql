# Write your MySQL query statement below
select project_id , 
Round(Coalesce(sum(e.experience_years)/count(e.experience_years),0),2) as average_years
from Project p
left join employee e
on p.employee_id = e.employee_id
group by p.project_id