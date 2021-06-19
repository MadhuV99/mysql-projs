use school_db;

select * from students;

select * from students limit 10;

select last_name, first_name from school_db.students where last_name = 'Williams';

select last_name, first_name from school_db.students where last_name like  'Test%';

select last_name, first_name from school_db.students where last_name like  '%ll%';

select last_name as `Last name`, 
first_name as `First Name`, 
date_of_birth as `Date of Birth`
from students;

select concat(first_name, ' ', last_name) `Full Name`, enrollment_date `Enrollment date` from school_db.students;
select concat(first_name, ' ', last_name) as 'Full Name', enrollment_date `Enrollment date` from school_db.students
