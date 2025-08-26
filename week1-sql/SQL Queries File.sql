-- Query 1: Simple SELECT
SELECT * FROM Customers;

-- Query 2: Column Selection
SELECT customer_id, customer_city, customer_state
FROM Customers;

-- Query 3: WHERE Filtering
SELECT customer_id 
FROM Customers 
WHERE customer_city = 'franca'; 

-- Query 4: Multiple Conditions (AND Filtering)
SELECT customer_id, customer_city, customer_state 
FROM Customers
WHERE customer_state = 'SP' AND customer_zip_code_prefix = 14409;

-- Query 5: ORDER BY Sorting
SELECT customer_id, customer_city, customer_state 
FROM Customers
ORDER BY customer_city ASC;

-- Query 6: COUNT with GROUP BY
SELECT customer_city, 
       COUNT(customer_id) AS total_customers
FROM Customers
GROUP BY customer_city;

-- Query 7: SUM with GROUP BY
SELECT product_category_name, 
       COUNT(product_id) AS total_sales
FROM Products
GROUP BY product_category_name;

-- Query 8: AVG with GROUP BY
SELECT product_category_name, 
       AVG(product_weight_g) AS avg_weight
FROM Products
GROUP BY product_category_name;

-- Query 9: HAVING Clause
SELECT customer_city, 
       COUNT(customer_id) AS total_customers
FROM Customers
GROUP BY customer_city
HAVING COUNT(customer_id) > 10;

-- Query 10: MAX/MIN with GROUP BY
SELECT product_category_name, 
       MAX(product_weight_g) AS max_weight,
       MIN(product_weight_g) AS min_weight
FROM Products
GROUP BY product_category_name;

-- Query 11: INNER JOIN
SELECT c.customer_id, c.customer_city, o.order_id
FROM Customers c
INNER JOIN Orders o
  ON c.customer_id = o.customer_id;

-- Query 12: LEFT JOIN
SELECT O.order_id, payment_value, order_status
FROM Orders AS O 
LEFT JOIN OrderPayments AS P
  ON O.order_id = P.order_id;

-- Query 13: RIGHT JOIN
SELECT P.product_id, 
       P.product_category_name, 
       OI.order_id
FROM [Order Items] AS OI
RIGHT JOIN Products AS P
  ON OI.product_id = P.product_id;

-- Query 14: Multiple JOINs
SELECT C.customer_id, 
       C.customer_city, 
       O.order_id, 
       P.product_id, 
       P.product_category_name
FROM Customers AS C
INNER JOIN Orders AS O
  ON C.customer_id = O.customer_id
INNER JOIN [Order Items] AS OI
  ON O.order_id = OI.order_id
INNER JOIN Products AS P
  ON OI.product_id = P.product_id;

-- Query 15: Complex Query
SELECT 
    DATEPART(YEAR, O.order_purchase_timestamp) AS order_year,
    DATEPART(MONTH, O.order_purchase_timestamp) AS order_month,
    C.customer_city,
    P.product_category_name,
    SUM(P.product_weight_g) AS total_sold_weight
FROM Orders AS O
INNER JOIN Customers AS C
  ON O.customer_id = C.customer_id
INNER JOIN [Order Items] AS OI
  ON O.order_id = OI.order_id
INNER JOIN Products AS P
  ON OI.product_id = P.product_id
GROUP BY 
    DATEPART(YEAR, O.order_purchase_timestamp),
    DATEPART(MONTH, O.order_purchase_timestamp),
    C.customer_city,
    P.product_category_name
ORDER BY 
    order_year, order_month, total_sold_weight DESC;
