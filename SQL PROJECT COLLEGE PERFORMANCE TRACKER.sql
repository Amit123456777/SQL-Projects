-- SQL PROJECT: COLLEGE PERFORMANCE TRACKER


CREATE DATABASE college;

USE college;

CREATE TABLE student (
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL, 
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "amit", 98, "A", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F" , "Delhi"),
(106, "farah", 82, "B", "Delhi");

SELECT city FROM student;

SELECT DISTINCT city FROM student;

SELECT *
FROM student
WHERE marks > 80;

SELECT *
FROM student
WHERE city = "Mumbai";

 -- WE CAN CLUB MULTIPLE CONDITIONS
 
 SELECT *
 FROM student
 WHERE marks > 80 AND city = "Mumbai";
 
  -- show the students marks + 10 > 100
  
SELECT *
FROM student
WHERE marks + 10 > 100;
  
   -- SHOW THE STUDENT MARKS BETWEEN 80 AND 90 (80 & 90 INCLUSING).
   
SELECT *
FROM student
WHERE marks BETWEEN 80 AND 90;
   
-- SHOW THE STUDENT LIVE IN DELHI AND MUMBAI
    
SELECT *
FROM student
WHERE city IN ("Delhi", "Mumbai");
    
    -- SHOW THE TOP 3 STUDENTS
    
SELECT *
FROM student
ORDER BY marks ASC
LIMIT 3;
  
-- Update the grade of a student with a specific roll number
UPDATE student
SET grade = 'A+'
WHERE rollno = 101;

-- Delete a student record based on roll number
DELETE FROM student
WHERE rollno = 105;

-- Count the number of students in each city
SELECT city, COUNT(*) AS num_students
FROM student
GROUP BY city;

-- Calculate the average marks of students in each city
SELECT city, AVG(marks) AS avg_marks
FROM student
GROUP BY city;


-- Find the student with the highest marks
SELECT *
FROM student
WHERE marks = (SELECT MAX(marks) FROM student);

-- Find the student with the lowest marks
SELECT *
FROM student
WHERE marks = (SELECT MIN(marks) FROM student);


-- Find the students whose names start with 'A'
SELECT *
FROM student
WHERE name LIKE 'A%';

-- apply all clauses in a single code
SELECT city 
FROM student
WHERE grade = "A"
GROUP BY city
HAVING MAX(marks) >= 93
ORDER BY city ASC;

-- THANK YOU 
