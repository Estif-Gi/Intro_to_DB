USE alx_book_store;
-- ===========================
-- 1️⃣ LIST ALL AUTHORS
-- ===========================

SELECT * FROM Authors;
-- ===========================
-- 2️⃣ LIST ALL BOOKS WITH AUTHORS' NAMES
-- ===========================
SELECT Books.*, Authors.author_name
FROM Books
JOIN Authors ON Books.author_id = Authors.author_id;

-- ===========================
-- 3️⃣ LIST ALL CUSTOMERS 
-- ===========================
SELECT * FROM Customers;
-- ===========================
-- 4️⃣ LIST ALL ORDERS WITH CUSTOMER NAMES
-- ===========================
SELECT Orders.*, Customers.customer_name
FROM Orders
JOIN Customers ON Orders.customer_id = Customers.customer_id;
-- ===========================
-- 5️⃣ LIST ALL ORDER DETAILS WITH BOOK TITLES AND ORDER DATES
-- ===========================
SELECT Order_Details.*, Books.title, Orders.order_date
FROM Order_Details
JOIN Books ON Order_Details.book_id = Books.book_id
JOIN Orders ON Order_Details.order_id = Orders.order_id;