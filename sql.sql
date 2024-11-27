create database pract;
use pract;
CREATE TABLE employees1(employee_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(10) constraint name_chk CHECK (LENGTH(full_name) BETWEEN 3 AND 10),
    age INT constraint age_chk check (age >= 18 AND age <= 65) DEFAULT 28,
    gender VARCHAR(30) DEFAULT 'not specified',
    salary INT constraint sal_chk check (salary > 10000),
    city VARCHAR(40) NOT NULL DEFAULT 'chennai',
    Pan_no VARCHAR(50) UNIQUE,
    email_id VARCHAR(100) UNIQUE,
    country VARCHAR(15) DEFAULT 'india',
    mobile_no INT(10) CHECK (LENGTH(mobile_no) = 10 and mobile_no regexp'^[0-9]{10}$'),
    department_id INT);
    
insert into employees1(Full_name,age,gender,salary,city,Pan_no,email_id,country,mobile_no,department_id)
values('vishnu',38,'male',15000,'chennai','yuij913','jeouhn@example.com','india',1334555890,1);
#insert into employees(Full_name,age,gender,salary,city,Pan_no,email_id,country,mobile_no,department_id)
#values('vishnu',70,'male',15000,'chennai','yuij913','jeouhn@example.com','india',1334555890,1);
insert into employees1(Full_name,age,gender,salary,city,Pan_no,email_id,country,mobile_no,department_id)
values('vishal',38,'male',15000,'chennai','yuij813','jeoun@example.com','india',1334558890,1);
#insert into employees(Full_name,age,gender,salary,city,Pan_no,email_id,country,mobile_no,department_id)
#values('vishal',38,'unknown',15000,'chennai','yuij813','jeoun@example.com','india',1334558890,1);
insert into employees1(Full_name,age,gender,salary,city,Pan_no,email_id,country,mobile_no,department_id)
values('vis',38,'male',15000,'chennai','vuij813','jeon@example.com','india',1134558890,1);
#insert into employees(Full_name,age,gender,salary,city,Pan_no,email_id,country,mobile_no,department_id)
#values('vishal',38,'male',10000,'chennai','yuij813','jeoun@example.com','india',1334558890,1);
insert into employees1(Full_name,age,gender,salary,city,Pan_no,email_id,country,mobile_no,department_id)
values('visk',48,'male',15000,'chennai','vuivj813','je@example.com','india',1734558890,2);
#insert into employees(Full_name,age,gender,salary,city,Pan_no,email_id,country,mobile_no,department_id)
#values('visk',48,'male',15000,'chennai','yuivj813','je@example.com','india',1734558890,2);
insert into employees1(Full_name,age,gender,salary,city,Pan_no,email_id,country,mobile_no,department_id)
values('viai',58,'male',15000,default,'vvj813','jn@example.com','india',1731558890,5);
insert into employees1(Full_name,age,gender,salary,city,Pan_no,email_id,country,mobile_no,department_id)
values('vias',58,'male',15000,'pune','vuvj813','jen@example.com','india',1732558890,5);
insert into employees1(Full_name,age,gender,salary,city,Pan_no,email_id,country,mobile_no,department_id)
values('nik',39,'male',15000,'chennai','vuj813','jin@example.com','india',1334568890,3);
insert into employees1(full_name,age,salary,city,Pan_no,email_id,country,mobile_no,department_id)
values('miil',36,17000,'chennai','von703','mzi@example.com','india',1234535800,7);

select * from employees1;
alter table employees drop check gender_chk;




insert into employees1(full_name,age,salary,Pan_no,email_id,country,mobile_no,department_id)
values('mikol',36,17000,'vonn703','mmui@example.com','india',1237505800,7);
insert into employees1(Full_name,gender,salary,city,Pan_no,email_id,country,mobile_no,department_id)
values('vishnju','male',15000,'chennai','yuijj913','jeounnn@example.com','india',1330555890,1);
insert into employees1(Full_name,age,gender,salary,city,Pan_no,email_id,country,mobile_no,department_id)
values('vishnqu',38,'male',1500,'chennai','yuil913','jqqouhn@example.com','india',1334565890,1);

insert into employees1(Full_name,age,gender,salary,Pan_no,email_id,country,mobile_no,department_id)
values('jshnu',38,'male',15000,'yuij313','jtouhn@example.com','india',1334551890,1);