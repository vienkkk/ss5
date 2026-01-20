create database ss5;

use ss5;

create table orders (
order_id int,
customer_id int,
total_amount DECIMAL(10,2),
order_date date,
status ENUM('pending', 'completed', 'cancelled')
);

INSERT INTO orders (order_id, customer_id, total_amount, order_date, status)
VALUES
(1, 1, 15000000.00, '2026-01-01', 'pending'),
(2, 2, 250000.50, '2026-01-02', 'completed'),
(3, 3, 50000.00, '2026-01-03', 'cancelled'),
(4, 1, 120000.00, '2026-01-04', 'completed'),
(5, 4, 75000.00, '2026-01-05', 'pending'),
(6, 5, 300000.00, '2026-01-06', 'completed'),
(7, 2, 95000.00, '2026-01-07', 'cancelled'),
(8, 6, 180000.00, '2026-01-08', 'pending'),
(9, 3, 220000.00, '2026-01-09', 'completed'),
(10, 7, 135000.00, '2026-01-10', 'pending');

select * from orders;

select order_id from orders where total_amount>5000000;

select* 
from 
(
select order_date
from orders 
order by order_date desc
limit 5
) as News
order by order_date asc;