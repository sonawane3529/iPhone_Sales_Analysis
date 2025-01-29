Create Database IPhone;
Use IPhone;

CREATE TABLE iphone_sales (
    sale_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    model VARCHAR(20),
    storage INT,
    color VARCHAR(20),
    price DECIMAL(10,2),
    purchase_date DATE,
    store_location VARCHAR(50)
);

INSERT INTO iphone_sales (sale_id, customer_name, model, storage, color, price, purchase_date, store_location) VALUES
(1, 'Rahul Sharma', 'iPhone 15 Pro', 256, 'Titanium Blue', 1299.99, '2024-01-05', 'Mumbai'),
(2, 'Sneha Kapoor', 'iPhone 14', 128, 'Midnight', 899.99, '2024-01-07', 'Delhi'),
(3, 'Amit Verma', 'iPhone 15', 512, 'Black', 1399.99, '2024-01-10', 'Bangalore'),
(4, 'Pooja Singh', 'iPhone 13 Mini', 128, 'Red', 699.99, '2024-01-12', 'Hyderabad'),
(5, 'Kunal Joshi', 'iPhone 15 Pro Max', 256, 'Natural Titanium', 1599.99, '2024-01-14', 'Chennai'),
(6, 'Meera Rao', 'iPhone 14 Pro', 128, 'Deep Purple', 1199.99, '2024-01-16', 'Pune'),
(7, 'Arjun Das', 'iPhone 12', 64, 'White', 599.99, '2024-01-18', 'Kolkata'),
(8, 'Neha Gupta', 'iPhone 15', 256, 'Blue', 1099.99, '2024-01-20', 'Jaipur'),
(9, 'Rohan Mehta', 'iPhone 14 Plus', 512, 'Starlight', 999.99, '2024-01-22', 'Ahmedabad'),
(10, 'Simran Kaur', 'iPhone 13', 128, 'Pink', 799.99, '2024-01-25', 'Lucknow'),
(11, 'Vikas Patel', 'iPhone 15 Pro', 512, 'Titanium Black', 1499.99, '2024-01-27', 'Indore'),
(12, 'Ananya Ghosh', 'iPhone 12 Mini', 64, 'Blue', 549.99, '2024-01-29', 'Chandigarh'),
(13, 'Raj Malhotra', 'iPhone 15 Pro Max', 512, 'Silver', 1799.99, '2024-01-31', 'Nagpur'),
(14, 'Priya Iyer', 'iPhone 14', 256, 'Purple', 949.99, '2024-02-02', 'Surat'),
(15, 'Sandeep Reddy', 'iPhone 13', 512, 'Midnight', 1099.99, '2024-02-05', 'Visakhapatnam'),
(16, 'Tina Paul', 'iPhone 15', 128, 'Yellow', 999.99, '2024-02-07', 'Bhopal'),
(17, 'Manish Tiwari', 'iPhone 14 Pro', 256, 'Graphite', 1299.99, '2024-02-09', 'Patna'),
(18, 'Sonal Jain', 'iPhone 12', 128, 'Green', 649.99, '2024-02-11', 'Ludhiana'),
(19, 'Gautam Bhardwaj', 'iPhone 15 Pro', 256, 'Titanium Gold', 1399.99, '2024-02-13', 'Kochi'),
(20, 'Divya Nair', 'iPhone 13 Mini', 256, 'Blue', 799.99, '2024-02-15', 'Mysore');

select * from iphone_sales;

/*Queries for Analysis*/

/*Total Revenue from iPhone Sales*/
SELECT SUM(price) AS total_revenue FROM iphone_sales;

/*Number of Sales per Model*/
SELECT model, COUNT(*) AS total_sales 
FROM iphone_sales 
GROUP BY model 
ORDER BY total_sales DESC;

/*Most Popular Storage Variant*/
SELECT storage, COUNT(*) AS count 
FROM iphone_sales 
GROUP BY storage 
ORDER BY count DESC;

/* Sales Distribution by Store Location*/
SELECT store_location, COUNT(*) AS total_sales 
FROM iphone_sales 
GROUP BY store_location 
ORDER BY total_sales DESC;

/*Highest-Paying Customer*/
SELECT customer_name, price 
FROM iphone_sales 
ORDER BY price DESC 
LIMIT 1;

