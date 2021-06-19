use school_db;

select * from school_db.classes;

select distinct * from school_db.classes;

select distinct course_id from school_db.classes;

select distinct course_id, id from school_db.classes;

select * from school_db.classes;
select * from school_db.classes group by course_id;

select * from school_db.classes clas 
left join school_db.lecturers lect on clas.lecturer_id =  lect.id
inner join school_db.courses cours on clas.course_id = cours.courseid;

select * from school_db.classes clas 
inner join school_db.courses cours on clas.course_id = cours.courseid;

select 
cours.courseid, cours.title, cours.number_of_credits, cours.course_code 
from school_db.classes clas 
inner join school_db.courses cours on clas.course_id = cours.courseid
group by cours.courseid;






