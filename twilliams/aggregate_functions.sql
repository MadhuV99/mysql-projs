use school_db;

-- AVG() function
select * from school_db.enrollments en 
inner join school_db.classes cl on en.class_id = cl.id
inner join school_db.courses co on cl.course_id = co.courseid ;

select 
co.title, en.grade
from school_db.enrollments en 
inner join school_db.classes cl on en.class_id = cl.id
inner join school_db.courses co on cl.course_id = co.courseid ;

select 
co.title `Course Title`, avg(en.grade) `Average Grade`
from school_db.enrollments en 
inner join school_db.classes cl on en.class_id = cl.id
inner join school_db.courses co on cl.course_id = co.courseid 
group by co.title; 

-- count() Function
select * from school_db.enrollments;

select 
en.class_id, en.student_id, count(en.student_id)
from school_db.enrollments en
group by en.class_id;

select 
en.class_id, en.student_id, count(en.student_id)
from school_db.enrollments en
where en.class_id = 5
group by en.class_id;

select 
co.title, cl.time, count(en.student_id)
from school_db.enrollments en
inner join school_db.classes cl on en.class_id = cl.id 
inner join school_db.courses co on cl.course_id = co.courseid
group by en.class_id;

-- MIN() / MAX() Function
select * from school_db.enrollments;

select class_id, min(grade), max(grade) from school_db.enrollments
group by class_id;

select class_id, min(grade), max(grade) from school_db.enrollments
group by class_id 
having min(grade) > 35 ;

-- SUM() Function
select * from school_db.enrollments;

select * from school_db.enrollments en
inner join school_db.students st on en.student_id = st.id 
inner join school_db.classes cl on en.class_id = cl.id 
inner join school_db.courses co on cl.course_id = co.courseid ;

select 
concat(st.last_name, ',', st.first_name) `Student Name`,
sum(co.number_of_credits) 
from school_db.enrollments en
inner join school_db.students st on en.student_id = st.id 
inner join school_db.classes cl on en.class_id = cl.id 
inner join school_db.courses co on cl.course_id = co.courseid
group by en.student_id ;

-- HAVING clause
select 
concat(st.last_name, ',', st.first_name) `Student Name`,
sum(co.number_of_credits) 
from school_db.enrollments en
inner join school_db.students st on en.student_id = st.id 
inner join school_db.classes cl on en.class_id = cl.id 
inner join school_db.courses co on cl.course_id = co.courseid
group by en.student_id 
-- having sum(co.number_of_credits) = 3 ;
having sum(co.number_of_credits) = 6 ;
