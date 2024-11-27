create database gopika;
use gopika;
create table author_details (id int,name varchar(40),birth_year int,death_year int);

insert into author_details values(1,"marcella colle",1950,2020),(2,"lisa mullins",1891,1950),(3,"charles",1956,2024),(4,"samuel",1952,2000),(5,"james",1965,2012);
select*from author_details;
create table book_details (id int,author_id int,title varchar(40),publish_year int,publishing_house varchar(50),rating float);

insert into book_details values(1,null,"soulless_girls",2008,"golden albatros",4.3),(2,null,"week_heart",1980,"diamund_inc",3.8),(3,4,"faith_of_light",1995,"white_cloud_press",4.3),(4,null,"memory_of_hope",2000,"rutis_enterprises",2.7),(5,6,"warrior_of_wind",2005,"maverick",4.6);
select*from book_details;

create table adaptation_details (book_id int,type varchar(50),title varchar(40),release_year int,rating float);

insert into adaptation_details values(1,"movie","gone_with_the_wolves_the_beginning",2008,3),(3,"movie","companions_of_tommorrow",2001,4.2),
(5,"movie","homeless_warrior",2008,4),(2,"movie","blacksmith_with_silver",2014,4.3),(4,"movie","patrons_and_bearers",2004,3.2);
select*from adaptation_details;

create table book_review_details(book_id int,review varchar(90),authior varchar(90));

insert into book_review_details values(1,"an_incredible_book","sylvia_jones"),(2,"great,although_it_some_flaws","jessica_parker"),(3,"dennis_stokes_takes_the_reader_for_A_ride
_full_of_emotions","thomas_green"),(4,"incredible_craftmanship_of_the_author","martin_freeman"),(5,"not_the_best_book_by_the_auhtor","jude_faith"),(6,"claudia_johnson_at_her_best!","joe_marqiz"),(7,"i_cannot_recall_more_captivating_plot","alexander_durham");
select*from book_review_details;


select name,title,publish_year From author_details join book_details On author_details.id=book_details.author_id;
select name,title,publish_year from author_details join book_details on author_details.id=book_details.author_id;
SELECT book_details,adaptation_details, book_details.publish_year, adaptation_details.release_year FROM book_details JOIN adaptation_details ON book_details.id = adaptation_details.book_id WHERE adaptation_details.release_year - book_details.publish_year <= 4 AND book_details.rating < adaptation_details.rating;

SELECT book_details.title AS book_title, adaptation_details.title AS adaptation_title, book_details.publish_year, adaptation_details.release_year 
FROM book_details JOIN adaptation_details ON book_details.id = adaptation_details.book_id
WHERE adaptation_details.release_year - book_details.publish_year <= 4
AND book_details.rating < adaptation_details.rating;

SELECT
book_details.title,
adaptation_details.title,
adaptation_details.release_year
FROM book_details
LEFT JOIN adaptation_details
ON book_details.id =
adaptation_details.book_id;

SELECT
book_details.title,
publishing_house,
adaptation_details.title,
adaptation_details.type
FROM book_details
LEFT JOIN adaptation_details
ON book_details.id =
adaptation_details.book_id
WHERE type = 'movie'
OR type IS NULL;

select*from book_details;
select*from author_details;
select*from author_details left join book_details on author_details=book_details union select*from author_details right join book_details on author_details=book_details;
select title,name from book_details full join author_details on book_details.author_id=author.id;

select title, name from book_details left join author_details on book_details.author_id=author_details.id 
union 
select title,name from book_details right join author_details on book_details.author_id=author_details.id;

create table workshop_workers(id int,name varchar(40),specialisation varchar(40),master_id int,experience int,project_id int);

insert into workshop_workers values(1,"mathew_conn","woodworking",null,20,1),(2,"kate_brown","woodworking",1,4,1),(3,"john_doe","incrusting",5,3,1),(4,"john_kowalsky","watchmaking",7,2,3),(5,"suzan_gregowitic","incrusting",null,15,4);
select*from workshop_workers;
SELECT
apprentice.name AS apprentice_name,
master.name AS master_name
FROM workshop_workers apprentice
JOIN workshop_workers master
ON apprentice.master_id = master.id;

select name,title from author_details join book_details on author_details.id=book_details.author_id;
select*from book_details;
select*from author_details;

select name,title,publish_year from author_details join book_details on author_details.id=book_details.author_id where publish_year<2005;

SELECT book_details.title AS book_title, adaptation_details.title AS adaptation_title, book_details.publish_year, adaptation_details.release_year 
FROM book_details JOIN adaptation_details ON book_details.id = adaptation_details.book_id
WHERE adaptation_details.release_year - book_details.publish_year <= 4
AND book_details.rating < adaptation_details.rating;

SELECT book_details.title,adaptation_details.title FROM book_details LEFT JOIN adaptation_details ON book_details.id =adaptation_details.book_id;

create table producers_details (name varchar(80),price int,producer_name varchar(90),department_name varchar(90));
insert into products,producers,department values("product 1",10.99,"producer_a,""department_1"),("product 2",15.99,"producer_b","department_c"),("product 3",12.99,"producer_c","department_3");


CREATE TABLE departments (id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(255) NOT NULL);
CREATE TABLE producers (id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(255) NOT NULL);
CREATE TABLE products (id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(255) NOT NULL,price DECIMAL(10, 2) NOT NULL,producer_id INT,department_id INT,FOREIGN KEY (producer_id) REFERENCES producers(id),FOREIGN KEY (department_id) REFERENCES departments(id));
INSERT INTO departments (name) VALUES('Department 1'),('Department 2'),('Department 3');
INSERT INTO producers (name) VALUES('Producer A'),('Producer B'),('Producer C');
INSERT INTO products (name, price, producer_id, department_id) VALUES('Product 1', 10.99, 1, 1),('Product 2', 15.99, 2, 2),('Product 3', 12.99, 3, 3);
SELECT products.name AS product_name,products.price,producers.name AS producer_name,departments.name AS department_name FROM products JOIN producers ON products.producer_id = producers.id JOIN departments ON products.department_id = departments.id;

CREATE TABLE employee(employee_id int primary key auto_increment,full_name VARCHAR(10),check (length(full_name)between 3 and 10),
    age INT CHECK (age >=18 AND age <=65)default 28,
    gender VARCHAR(30) check (gender in("male","female","others"))DEFAULT "not specified",
    salary INT CHECK (salary > 10000),
    city VARCHAR(40) not null DEFAULT "chennai",
    Pan_no VARCHAR(50) UNIQUE,
    email_id VARCHAR(100) UNIQUE,
    country varchar(15) default "india",
    mobile_no int(10) check (length(mobile_no)<10),
    department_id int,foreign key (department_id)references employee(emplopyee_id));
    
    
    new one
    
    use gopika;
    drop table employees;
    drop table department;
    CREATE TABLE employees(employee_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(10) CHECK (LENGTH(full_name) BETWEEN 3 AND 10),
    age INT CHECK (age >= 18 AND age <= 65) DEFAULT 28,
    gender VARCHAR(30) CHECK (gender IN ('male', 'female', 'others')) DEFAULT 'not specified',
    salary INT CHECK (salary > 10000),
    city VARCHAR(40) NOT NULL DEFAULT 'chennai',
    Pan_no VARCHAR(50) UNIQUE,
    email_id VARCHAR(100) UNIQUE,
    country VARCHAR(15) DEFAULT 'india',
    mobile_no INT(10) CHECK (LENGTH(mobile_no) = 10 and mobile_no regexp'^[0-9]{10}$'),
    department_id INT, FOREIGN KEY (department_id) REFERENCES employees(employee_id));
    select*from employees;
    create table department(dept_id int,name varchar(20));
    
insert into employers(Full_name,age,gender,salary,city,Pan_no,email_id,country,mobile_no,department_id)
values('vishnuvish',28,'male',15000,'chennai','utrj213','john@example.com','india',897593270,1);

ALTER TABLE employerss DROP CONSTRAINT employerss_chk_5;
ALTER TABLE employers DROP CONSTRAINT employers_chk_2;

    SHOW CREATE TABLE employee;
    
    age constraint;
select*from employees;
insert into employees(Full_name,age,gender,salary,city,Pan_no,email_id,country,mobile_no,department_id)
values('vishnu',38,'male',15000,'chennai','yuij913','jeouhn@example.com','india',1334555890,1);
insert into employees(Full_name,age,gender,salary,city,Pan_no,email_id,country,mobile_no,department_id)
values('vishnu',70,'male',15000,'chennai','yuij913','jeouhn@example.com','india',1334555890,1);

insert into department values(1,"hr");
select*from department;

gender constraint:

insert into department values(2,"hr");
insert into employees(Full_name,age,gender,salary,city,Pan_no,email_id,country,mobile_no,department_id)
values('vishal',38,'male',15000,'chennai','yuij813','jeoun@example.com','india',1334558890,1);
insert into employees(Full_name,age,gender,salary,city,Pan_no,email_id,country,mobile_no,department_id)
values('vishal',38,'unknown',15000,'chennai','yuij813','jeoun@example.com','india',1334558890,1);

salary constraint;

insert into department values(3,"hr");
insert into employees(Full_name,age,gender,salary,city,Pan_no,email_id,country,mobile_no,department_id)
values('vis',38,'male',15000,'chennai','vuij813','jeon@example.com','india',1134558890,1);
insert into employees(Full_name,age,gender,salary,city,Pan_no,email_id,country,mobile_no,department_id)
values('vishal',38,'male',10000,'chennai','yuij813','jeoun@example.com','india',1334558890,1);

pan;

insert into department values(4,"hr");
insert into employees(Full_name,age,gender,salary,city,Pan_no,email_id,country,mobile_no,department_id)
values('visk',48,'male',15000,'chennai','vuivj813','je@example.com','india',1734558890,2);
insert into employees(Full_name,age,gender,salary,city,Pan_no,email_id,country,mobile_no,department_id)
values('visk',48,'male',15000,'chennai','yuivj813','je@example.com','india',1734558890,2);

City Default Value;

insert into department values(5,"hr");

insert into employees(Full_name,age,gender,salary,city,Pan_no,email_id,country,mobile_no,department_id)
values('viai',58,'male',15000,default,'vvj813','jn@example.com','india',1731558890,5);
insert into employees(Full_name,age,gender,salary,city,Pan_no,email_id,country,mobile_no,department_id)
values('vias',58,'male',15000,'pune','vuvj813','jen@example.com','india',1732558890,5);

Email Unique Constraint;

insert into department values(6,"hr");

insert into employees(Full_name,age,gender,salary,city,Pan_no,email_id,country,mobile_no,department_id)
values('nik',39,'male',15000,'chennai','vuj813','jin@example.com','india',1334568890,3);

insert into employees(Full_name,age,gender,salary,city,Pan_no,email_id,country,mobile_no,department_id)
values('nik',39,'male',15000,'chennai','vj813','jin@example.com','india',1334068890,3);



 Not Null Constraint on Fullname;
  
  insert into department values(7,"hr");
  
insert into employees(Full_name,age,gender,salary,city,Pan_no,email_id,country,mobile_no,department_id)
values('nikibhuvaneswari',35,'male',15000,'chennai','vuk813','jini@example.com','india',1334568800,4);

insert into employees(Full_name,age,gender,salary,city,Pan_no,email_id,country,mobile_no,department_id)
values('niki',35,'male',15000,'chennai','vuk813','jini@example.com','india',1334568800,5);

 Default Value for Gender;
 
 insert into department values(8,"hr");
 insert into employees(Full_name,age,gender,salary,city,Pan_no,email_id,country,mobile_no,department_id)
values('nikil',25,'male',15000,'chennai','vun813','jii@example.com','india',1334538800,5);
