use employees;

SELECT 
    salary, COUNT(*) AS sal_count
FROM
    salaries
WHERE
    from_date > '1994-06-24'
-- GROUP BY salary
HAVING salary > 0
ORDER BY sal_count ASC;

SELECT 
    salary, COUNT(*) AS sal_count
FROM
    salaries
WHERE
   from_date > '1994-06-24' 
-- GROUP BY salary
HAVING  sal_count > 50  
ORDER BY sal_count ASC;

SELECT 
    salary, COUNT(*) AS sal_count
FROM
    salaries
WHERE
    from_date > '1994-06-24'
GROUP BY salary
HAVING sal_count > 50
ORDER BY sal_count ASC;

select salary, count(*) as sal_count from salaries group by salary having sal_count > 100 order by sal_count asc ;
select salary, count(*) as sal_count from salaries group by salary having sal_count > 100 order by salary ;
select first_name, count(*) as emp_count from employees group by first_name having  emp_count > 250 order by first_name ;
select first_name, count(*) as emp_count from employees group by first_name order by first_name;