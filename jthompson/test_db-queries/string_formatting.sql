use employees;

SELECT 
    first_name, last_name, concat(left(first_name, 1), left(last_name, 1)) as initials
FROM
    employees
LIMIT 100;

select * from employees LIMIT 100;

SELECT RIGHT('asdf', 1), LEFT('asdf', 1), LEFT('asdf', 2);

SELECT 'asdf';