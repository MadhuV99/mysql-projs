use employees;

SELECT 
    *
FROM
    employees
WHERE
    first_name IN (SELECT DISTINCT
            first_name
        FROM
            employees
        WHERE
            first_name LIKE 'E%');

select distinct first_name from employees where first_name like 'E%';

select count(distinct birth_date) from employees;

select distinct birth_date from employees;

select distinct first_name from employees order by first_name;

select count(distinct first_name) from employees order by first_name;

select * from employees order by first_name;

select * from employees order by emp_no limit 19, 20;

select * from employees limit 19, 20;

select * from employees limit 0, 20;

select * from employees limit 20;

select * from employees;

select * from employees where first_name = 'Elvis' order by gender, birth_date desc;

select * from employees where first_name = 'Elvis' order by birth_date;

select * from salaries;

select * from salaries order by from_date, salary desc limit 100;

select * from salaries order by salary asc limit 100;

select * from employees where birth_date between '1954-05-01' and '1956-04-20';

select count(*) from employees where birth_date not between '1954-05-01' and '1956-04-20';

select count(*) from employees where birth_date between '1954-05-01' and '1956-04-20';

select count(*) from salaries where salary between 66074 and 71046;

select count(*) from salaries where salary >= 66074 and salary <= 71046;

select * from employees where first_name like 'E%' and last_name like '_e%';

select * from salaries where salary < 66961 and from_date > '1989-06-25';

select * from information_schema.PLUGINS where PLUGIN_LIBRARY is not null;

select * from information_schema.PLUGINS where PLUGIN_LIBRARY is null;

select * from titles where to_date is null;

select * from employees where first_name IN ('Elvis', 'Sumant', 'Berni','Lillian' );

select count(*) from employees where first_name IN ('Elvis', 'Sumant', 'Berni','Lillian' ) 
and last_name NOT IN ('Redmiles', 'Feldhoffer', 'Androuto', 'Schaar') ;

select count(*) from employees where first_name IN ('Elvis', 'Sumant', 'Berni','Lillian' ) LIMIT 10;

select count(*) from employees where first_name IN ('Elvis', 'Sumant', 'Berni','Lillian' );

select * from employees where first_name = 'Elvis';

select * from employees where first_name = 'Elvis' LIMIT 10;

select * from employees where first_name <> 'Elvis' LIMIT 10;

select * from employees where first_name = 'Elvis' and last_name = 'Velasco' or first_name = 'Chenye' and last_name = 'Velasco' ;

select first_name, last_name, concat(first_name, ' : ', last_name) as `Full Name` from employees limit 10;

select first_name, last_name, concat(first_name, ' | ', last_name) as `Full Name` from employees limit 10;

select concat(first_name, ' ', last_name) as `Full Name` from employees;

select first_name as `First Name`, last_name as `Last Name` from employees;

select first_name as "First Name", last_name as "Last Name" from employees;

select first_name as 'First Name', last_name as 'Last Name' from employees;


select first_name as firstN, last_name as lastN from employees;

select first_name, last_name from employees;


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

