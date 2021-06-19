use employees;

select 
	emp_no, count(*) as emp_count
from 
	employees 
where
	emp_no > 1
group by 
	emp_no
having 
	emp_count > 0
order by 
	emp_no
limit 
	5, 10
;

