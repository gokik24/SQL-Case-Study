CREATE DATABASE LearningDB;
USE LearningDB;
CREATE TABLE Courses (id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT);

CREATE TABLE Instructors (id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    expertise VARCHAR(50) NOT NULL);

CREATE TABLE Students (id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE);

CREATE TABLE Enrollments (student_id INT,
    course_id INT,
    enrollment_date DATE NOT NULL,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES Students(id),
    FOREIGN KEY (course_id) REFERENCES Courses(id));

INSERT INTO Courses (title, description)
 VALUES('Introduction to Programming', 'Learn the basics of programming using Python.'),
('Data Structures and Algorithms', 'An in-depth course on data structures and algorithms.'),
('Web Development', 'A comprehensive guide to building websites using HTML, CSS, and JavaScript.');

INSERT INTO Instructors (name, expertise)
 VALUES('Alice Johnson', 'Python Programming'),
('Bob Smith', 'Web Development'),
('Charles Davis', 'Data Structures');

INSERT INTO Students (name, email) VALUES
('John Doe', 'john.doe@example.com'),
('Jane Smith', 'jane.smith@example.com'),
('Mark Taylor', 'mark.taylor@example.com');

INSERT INTO Enrollments (student_id, course_id, enrollment_date) 
VALUES(1, 1, '2024-11-01'),
(1, 2, '2024-11-02'),
(2, 3, '2024-11-03'),
(3, 1, '2024-11-04');

SELECT * FROM Courses;

SELECT * FROM Instructors;

SELECT Students.name AS student_name,
Courses.title AS course_title,
Enrollments.enrollment_date
FROM Enrollments
JOIN Students ON Enrollments.student_id = Students.id
JOIN Courses ON Enrollments.course_id = Courses.id;

SELECT Courses.title AS course_title,
COUNT(Enrollments.student_id) AS student_count
FROM Enrollments
JOIN Courses ON Enrollments.course_id = Courses.id
GROUP BY Courses.title;








