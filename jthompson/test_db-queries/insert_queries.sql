use employees;

INSERT INTO departments VALUES ('d999', 'Awesome Gurus');

INSERT INTO departments (dept_no, dept_name) VALUES ('d998', 'Awesome Gurus 2');

select max(emp_no) from employees;

insert into employees SELECT max(emp_no) + 1, '1976-01-01', 'John', 'Thompson', 'M', '2018-06-18' from employees;

insert into employees SELECT max(emp_no) + 1, '1976-01-01', 'Madhu', 'Vasudevan', 'M', '2018-06-18' from employees;

insert into employees SELECT max(emp_no) + 1, '1985-01-01', 'Jessie', 'Porter', 'M', '2018-01-01' from employees;

select * from employees where first_name = 'Jessie' and last_name = 'Porter';

insert into titles values(500002, 'Staff', '2018-01-01', '9999-01-01');

insert into dept_emp values(500002, 'd008', '2018-01-01', '9999-01-01');

insert into salaries values(500002, 120000, '2018-01-01', '9999-01-01');

