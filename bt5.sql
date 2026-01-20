use ss5;
ALTER TABLE products ADD COLUMN sold_quantity INT DEFAULT 0;

INSERT INTO products (product_id, product_name, price, stock, status, sold_quantity)
VALUES (12, 'Sản phẩm mới', 1500000.00, 50, 'active', 25);

INSERT INTO products (product_id, product_name, price, stock, status, sold_quantity)
VALUES 
(13, 'iPhone 15', 19000000.00, 10, 'active', 100),
(14, 'Chuột không dây', 150000.00, 100, 'active', 500),
(15, 'Bàn phím cơ', 1200000.00, 30, 'active', 150);

SELECT * FROM products 
ORDER BY sold_quantity DESC 
LIMIT 10;

SELECT * FROM products 
ORDER BY sold_quantity DESC 
LIMIT 5 OFFSET 10;

SELECT * FROM products 
WHERE price < 2000000 
ORDER BY sold_quantity DESC;

