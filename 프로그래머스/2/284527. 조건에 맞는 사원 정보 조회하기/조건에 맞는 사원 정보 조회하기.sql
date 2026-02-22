select sum(g.score) as score, 
    e.emp_no as emp_no, 
    e.emp_name as emp_name, 
    e.position as position, 
    e.email as email
from hr_employees as e
join hr_grade as g on g.emp_no = e.emp_no
where g.year = 2022
group by e.emp_no
order by score desc
limit 1;
