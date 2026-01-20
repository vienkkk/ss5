create database ss5;

use ss5;

create table customers (
customer_id int,
full_name VARCHAR(255),
email VARCHAR(255),
city VARCHAR(255),
status ENUM( 'active', 'inactive' )
);

INSERT INTO customers (customer_id, full_name, email, city, status)
VALUES
(1, 'Nguyen Van A', 'vana@example.com', 'Hà Nội', 'active'),
(2, 'Tran Thi B', 'thib@example.com', 'TP HCM', 'inactive'),
(3, 'Le Van C', 'vanc@example.com', 'Hà Nội', 'active'),
(4, 'Pham Thi D', 'thid@example.com', 'TP HCM', 'active'),
(5, 'Hoang Van E', 'vane@example.com', 'Hà Nội', 'inactive'),
(6, 'Do Thi F', 'thif@example.com', 'TP HCM', 'active'),
(7, 'Vu Van G', 'vang@example.com', 'Hà Nội', 'active'),
(8, 'Dang Thi H', 'thih@example.com', 'TP HCM', 'inactive'),
(9, 'Bui Van I', 'vani@example.com', 'Hà Nội', 'active'),
(10, 'Ngo Thi J', 'thij@example.com', 'TP HCM', 'active');

select * from customers;

select full_name from customers where city ='TP HCM';

select full_name from customers where status='active' and city ='Hà Nội';

select full_name from customers order by full_name asc;
