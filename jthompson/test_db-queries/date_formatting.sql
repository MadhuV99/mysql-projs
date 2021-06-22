-- DATE_FORMAT() 
use employees;

SELECT DATE_FORMAT("2021-06-15","%M %d %Y");

SELECT 
    from_date AS original,
    DATE_FORMAT(from_date, '%M %d, %Y') version1,
    DATE_FORMAT(from_date, '%m %D, %Y') version2,
    DATE_FORMAT(from_date, '%m-%d-%Y') version3
FROM
    salaries
LIMIT 100;


 