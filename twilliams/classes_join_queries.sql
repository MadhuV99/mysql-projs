use school_db;

SELECT * FROM school_db.classes;

SELECT * FROM school_db.classes 
inner join school_db.lecturers on school_db.classes.lecturer_id = school_db.lecturers.id
inner join school_db.courses on school_db.classes.course_id = school_db.courses.courseid;

SELECT 
concat(lect.last_name, ',', lect.first_name) as `Lecturer Full Name`,
course.title as `Course Title`,
course.number_of_credits as `Number of Credits` 
FROM school_db.classes class
inner join school_db.lecturers lect on class.lecturer_id = lect.id
inner join school_db.courses course on class.course_id = course.courseid;

-- LEFT JOIN:
select * from school_db.classes left join school_db.lecturers on school_db.classes.lecturer_id = school_db.lecturers.id;

-- RIGHT JOIN
select * from school_db.classes right join school_db.lecturers on school_db.classes.lecturer_id = school_db.lecturers.id;

-- CROSS JOIN
select * from school_db.classes cross join school_db.lecturers;
