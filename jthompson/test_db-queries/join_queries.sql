use employees;

select dept_name, emp.emp_no, first_name, last_name , 'Manager' as emp_type
from employees as emp
join dept_manager as dm on  emp.emp_no = dm.emp_no
join departments as dept on dm.dept_no = dept.dept_no
where dm.to_date = '9999-01-01' and emp.gender = 'M'
UNION
select dept_name, emp.emp_no, first_name, last_name, 'Staff' as emp_type
from employees as emp
join  dept_emp as de on emp.emp_no = de.emp_no
join departments as dept on de.dept_no = dept.dept_no
join titles as ttl on emp.emp_no = ttl.emp_no
where de.to_date = '9999-01-01' and ttl.to_date = '9999-01-01'
order by emp_type, dept_name, last_name
;

select dept.dept_name, emp.last_name, emp.first_name, ttl.title
from employees as emp,
dept_emp as de, 
departments as dept, 
titles as ttl 
where 
emp.emp_no = de.emp_no
and de.dept_no = dept.dept_no
and emp.emp_no = ttl.emp_no
and de.to_date = '9999-01-01' 
and ttl.to_date = '9999-01-01'
order by dept.dept_name, emp.last_name
;


select dept.dept_name, emp.last_name, emp.first_name, ttl.title
from employees as emp
natural join  dept_emp as de 
-- on emp.emp_no = de.emp_no
natural join departments as dept 
-- on de.dept_no = dept.dept_no
natural join titles as ttl 
-- on emp.emp_no = ttl.emp_no
where de.to_date = '9999-01-01' and ttl.to_date = '9999-01-01'
order by dept.dept_name, emp.last_name
;

select dept.dept_name, emp.last_name, emp.first_name, ttl.title
from employees as emp
join  dept_emp as de on emp.emp_no = de.emp_no
join departments as dept on de.dept_no = dept.dept_no
join titles as ttl on emp.emp_no = ttl.emp_no
where de.to_date = '9999-01-01' and ttl.to_date = '9999-01-01'
order by dept.dept_name, emp.last_name
;

select dept.dept_name, emp.last_name, emp.first_name, ttl.title
from dept_emp as de
join departments as dept on de.dept_no = dept.dept_no
join employees as emp on de.emp_no = emp.emp_no
join titles as ttl on de.emp_no = ttl.emp_no
where de.to_date = '9999-01-01' and ttl.to_date = '9999-01-01'
order by dept.dept_name, emp.last_name
;

select dept_name, emp.emp_no, first_name, last_name 
from employees as emp
join dept_manager as dm on  emp.emp_no = dm.emp_no
join departments as dept on dm.dept_no = dept.dept_no
where dm.to_date = '9999-01-01' and emp.gender = 'M'
order by dept_name, last_name
;

select dept_name, emp.emp_no, first_name, last_name 
from employees as emp
join dept_manager as dm on  emp.emp_no = dm.emp_no
join departments as dept on dm.dept_no = dept.dept_no
where dm.to_date = '9999-01-01' and emp.gender = 'F'
order by dept_name, last_name
;

select dept_name, emp.emp_no, first_name, last_name from employees as emp
join dept_manager as dm on  emp.emp_no = dm.emp_no
join departments as dept on dm.dept_no = dept.dept_no
order by dept_name, last_name
;

select * from employees
join dept_manager on  employees.emp_no = dept_manager.emp_no
join departments on dept_manager.dept_no = departments.dept_no
;

select * from employees
inner join dept_manager on  employees.emp_no = dept_manager.emp_no;
