use employees;
/*
*/

-- SELECT * FROM employees.departments;
SELECT 
    COUNT(*) AS `departments`
FROM
    employees.departments;

-- SELECT * FROM employees.dept_emp;
SELECT 
    COUNT(*) AS `dept_emp`
FROM
    employees.dept_emp;

-- SELECT * FROM employees.dept_manager;
SELECT 
    COUNT(*) AS `dept_manager`
FROM
    employees.dept_manager;

-- SELECT * FROM employees.employees;
SELECT 
    COUNT(*) AS `employees`
FROM
    employees.employees;

-- SELECT * FROM employees.salaries;
SELECT 
    COUNT(*) AS `salaries`
FROM
    employees.salaries;

-- SELECT * FROM employees.titles;
SELECT 
    COUNT(*) AS `titles`
FROM
    employees.titles; 





