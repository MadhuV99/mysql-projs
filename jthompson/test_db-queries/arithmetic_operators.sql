-- Arithmetic Operators
use employees;

SELECT 
    salary,
	salary * 0.01 / 7 AS daily,
    salary * .01 AS weekly,
    salary * 0.01 * 4 AS monthly,
    salary * 0.01 * 52 AS yearly,
    salary + 200 * 0.01 AS `multiply first`,
    (salary + 200) * 0.01 AS `add first`,
    salary DIV 3 as `DIV by 3`,
    salary % 3 as `% of 3`
FROM
    salaries
LIMIT 100;

select salary, salary * .01 as `weekly`, salary * 0.01 * 4 as `monthly`, salary * 0.01 * 52 as `yearly` from salaries LIMIT 100;

select salary, salary * .01 as `weekly`, salary * 0.01 * 4 as `monthly` from salaries LIMIT 100;

select salary * .01 as `weekly` from salaries LIMIT 100;

select salary from salaries LIMIT 100;

select * from salaries LIMIT 100;

select count(*) from salaries;