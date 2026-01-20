create database ss5;

use ss5;

create table products(
product_id int primary key,
product_name varchar(255),
price decimal(10,2),
stock int,
status enum('active','inactive')
);

INSERT INTO products (product_id, product_name, price, stock, status)
VALUES
(1, 'msv', 26000111.00, 2, 'active'),
(2, 'msv', 26000112.00, 2, 'active'),
(3, 'msv', 26000113.00, 2, 'active'),
(4, 'msv', 26000114.00, 2, 'active'),
(5, 'msv', 26000115.00, 2, 'inactive'),
(6, 'msv', 26000116.00, 2, 'active'),
(7, 'msv', 26000117.00, 2, 'active'),
(8, 'msv', 26000118.00, 2, 'active'),
(9, 'msv', 26000119.00, 2, 'active'),
(10, 'msv', 26000120.00, 2, 'active'),
(11, 'msv', 26000121.00, 2, 'active');

select * from products;
select * from products where status='active' 
order by price asc