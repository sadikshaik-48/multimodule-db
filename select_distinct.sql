CREATE TABLE products (
    product_id INT PRIMARY KEY IDENTITY(1,1),
    product_name VARCHAR(100),
    category VARCHAR(50),
    brand VARCHAR(50),
    price INT
);

INSERT INTO products (product_name, category, brand, price) VALUES
('iPhone 15', 'Mobile', 'Apple', 80000),
('Galaxy S24', 'Mobile', 'Samsung', 75000),
('iPhone 15', 'Mobile', 'Apple', 80000),
('Bravia X90', 'TV', 'Sony', 120000),
('Galaxy S24', 'Mobile', 'Samsung', 75000),
('Inspiron 15', 'Laptop', 'Dell', 65000),
('ThinkPad X1', 'Laptop', 'Lenovo', 95000),
('Bravia X90', 'TV', 'Sony', 120000),
('MacBook Air', 'Laptop', 'Apple', 110000),
('Inspiron 15', 'Laptop', 'Dell', 65000),
('AirPods Pro', 'Accessories', 'Apple', 25000),
('WH-1000XM5', 'Headphones', 'Sony', 30000),
('AirPods Pro', 'Accessories', 'Apple', 25000),
('Galaxy Buds', 'Accessories', 'Samsung', 12000),
('ThinkPad X1', 'Laptop', 'Lenovo', 95000);
SELECT * FROM products;

SELECT DISTINCT brand
FROM products;

SELECT DISTINCT category
FROM products;