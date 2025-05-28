CREATE DATABASE StudentDB;
USE StudentDB;

CREATE TABLE Students (id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE);


CREATE TABLE Courses (id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL);


CREATE TABLE Enrollments (student_id INT,
    course_id INT,
    grade CHAR(1),
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES Students(id),
    FOREIGN KEY (course_id) REFERENCES Courses(id));
    
    insert into students(id,name,age,email)values(1,'jane',24,'janethomson23@gmail.com'),(2,'jani',23,'jani12@gmail.com'),(3,'kate',34,'katy45@gmail.com'),(4,'lisa',56,'lisa78@gmail.com');
insert into courses(id,name)values(1,'social'),(2,'maths'),(3,'english'),(4,'science');
insert into enrollments(student_id,course_id,grade)values(1,1,'a'),(2,2,'b'),(3,3,'c'),(4,4,'d');
select*from students;
select*from courses;
select*from enrollments;
SELECT s.name AS student_name, c.name AS course_name FROM Students s JOIN Enrollments e ON s.id = e.student_id JOIN Courses c ON e.course_id = c.id;
SELECT c.name AS course_name, COUNT(e.student_id) AS number_of_students FROM Courses c LEFT JOIN Enrollments e ON c.id = e.course_id GROUP BY c.id;

