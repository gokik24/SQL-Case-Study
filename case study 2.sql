CREATE DATABASE LibraryDB;
USE LibraryDB;
CREATE TABLE Books (id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(50) NOT NULL,
    published_year YEAR NOT NULL,
    genre VARCHAR(30));

INSERT INTO Books (title, author, published_year, genre) VALUES('The Great Gatsby', 'F. Scott Fitzgerald', 1975, 'Fiction'),
('1984', 'George Orwell', 1969, 'Dystopian'),
('To Kill a Mockingbird', 'Harper Lee', 1990, 'Fiction'),
('Moby-Dick', 'Herman Melville', 2001, 'Adventure');
select*from books;

CREATE TABLE Members (id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    membership_date DATE NOT NULL);
INSERT INTO Members (name, membership_date) VALUES('Alice Johnson', '2023-06-15'),
('Bob Smith', '2022-04-10'),
('Charlie Brown', '2023-08-22'),
('David White', '2023-11-01');
select*from members;

CREATE TABLE Borrowing (id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    member_id INT,
    borrow_date DATE NOT NULL,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(id),
    FOREIGN KEY (member_id) REFERENCES Members(id));
    INSERT INTO Borrowing (book_id, member_id, borrow_date, return_date) VALUES(1, 1, '2023-11-10', '2023-11-20'),
(2, 2, '2023-11-05', '2023-11-18'),
(3, 3, '2023-11-15', NULL),
(4, 4, '2023-11-12', '2023-11-18');
select*from borrowing;

SELECT * FROM Books;
SELECT * FROM Members;

SELECT b.title AS book_title, m.name AS member_name, br.borrow_date, br.return_date
FROM Borrowing br
JOIN Books b ON br.book_id = b.id
JOIN Members m ON br.member_id = m.id;

SELECT m.name AS member_name, COUNT(br.id) AS books_borrowed FROM Members m LEFT JOIN Borrowing br ON m.id = br.member_id GROUP BY m.id;


    
