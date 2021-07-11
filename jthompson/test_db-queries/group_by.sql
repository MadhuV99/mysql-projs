use employees;


	select date_format(from_date, '%Y') as salary_year, sum(salary) as total_salary, max(salary) as max_salary, min(salary) as min_salary, avg(salary) as avg_salary
	from salaries
	where emp_no not in (
		select emp_no from dept_manager
	)
	group by salary_year
	order by salary_year
  ;


select count(*) from (
	select emp_no, sum(salary) as total_salary, max(salary) as max_salary, min(salary) as min_salary, avg(salary) as avg_salary
	from salaries
	group by emp_no
	order by emp_no
    ) as sub_select;
    
select count(*) from (
	select emp_no, sum(salary) as total_salary, max(salary) as max_salary, min(salary) as min_salary, avg(salary) as avg_salary
	from salaries
	where emp_no not in (
		select emp_no from dept_manager
	)
	group by emp_no
	order by emp_no
    ) as sub_select;

select count(*) from dept_manager;

select emp_no, sum(salary) as total_salary, max(salary) as max_salary, min(salary) as min_salary, avg(salary) as avg_salary
from salaries
where emp_no not in (
	select distinct emp_no from dept_manager
)
group by emp_no
order by emp_no;

select salary_year, avg_salary, salary_sum / total_recs as calculated_avg
from (
	select date_format(from_date, '%Y') as salary_year, avg(salary) as avg_salary, sum(salary) as salary_sum, count(*) as total_recs 
	from salaries 
	group by salary_year
	order by salary_year
    ) as sub_query;


SELECT 
    salary_year,
    max_salary,
    min_salary,
    max_salary - min_salary AS Delta
FROM
    (SELECT 
        DATE_FORMAT(from_date, '%Y') AS salary_year,
            MIN(salary) AS min_salary,
            MAX(salary) AS max_salary
    FROM
        salaries
    GROUP BY salary_year) AS sub_select
ORDER BY salary_year;
    
    select salary_year, max_salary, min_salary, max_salary - min_salary as Delta
from (
	SELECT 
		DATE_FORMAT(from_date, '%Y') AS salary_year,
		MIN(salary) AS min_salary,
		MAX(salary) AS max_salary
	FROM
		salaries
	GROUP BY salary_year order by salary_year) as sub_select;

select date_format(from_date, '%Y') as salary_year, min(salary) as min_salary, max(salary) as max_salary from salaries group by salary_year;

select date_format(from_date, '%Y') as salary_year, min(salary) from salaries;
select * from salaries;

select * from salaries; 
select date_format(from_date, '%Y') as year, sum(salary) from salaries group by year;

select salary, count(*) as sal_count from salaries group by salary order by sal_count desc;
select salary, count(*) from salaries group by salary order by salary;


select first_name from employees;
select first_name, count(*) from employees;
select birth_date, count(*) from employees group by birth_date order by birth_date;
select birth_date, count(*) from employees group by birth_date;
select first_name, count(*) from employees group by first_name;

SELECT * FROM employees.employees;
SELECT count(*) FROM employees.employees;