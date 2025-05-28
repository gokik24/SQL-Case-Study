create database retaildb;
use retaildb;
create table products(id int primary key auto_increment,name varchar(50) not null,price decimal(10,2) not null check (price>0),stock int not null check (stock>=0));
create table suppliers(id int primary key auto_increment,name varchar(50) not null,contact varchar(50));
create table sales(id int primary key auto_increment,product_id int,date date not null,quantity int not null check(quantity>0),total_price decimal(10,2) not null,foreign key (product_id) references products(id));

INSERT INTO Products (id,name, price, stock) VALUES (1,'Laptop', 1000.00, 20),
    (2,'Smartphone', 500.00, 30),
    (3,'Tablet', 300.00, 15),
    (4,'Headphones', 100.00, 50),
    (5,'Smartwatch', 150.00, 25);
   INSERT INTO Suppliers (id,name, contact) VALUES (11,'Tech Supplies Inc.', '123-456-7890'),
    (12,'Gadget World', '234-567-8901'),
    (13,'Electronic Hub', '345-678-9012');
 INSERT INTO Sales (id,product_id, date, quantity, total_price) VALUES (101,1, '2024-11-01', 5, 5000.00),
    (102,2,'2024-11-02', 10, 5000.00),
    (103,3, '2024-11-03', 7, 2100.00),
    (104,4, '2024-11-04', 3, 300.00),
    (105,5,'2024-11-05', 5, 750.00);
    select*from products;
SELECT*FROM Products WHERE stock < 10;

 #List sales with product names and total prices
SELECT Products.name AS product_name, Sales.total_price as total_price FROM Sales JOIN Products ON Sales.product_id = Products.id;

#Calculate the total sales for each product.

SELECT Products.name AS product_name, SUM(Sales.total_price) AS total_sales
FROM Sales
JOIN Products ON Sales.product_id = Products.id
GROUP BY Products.name;










