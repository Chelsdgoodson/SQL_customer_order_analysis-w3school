-- queries.sql: SQL queries for Customer Sales Analysis (W3Schools Edition)

-- 1. JOIN Customers table and Orders table for review
SELECT 
    Customers.CustomerID,
    Customers.CustomerName,
    Orders.OrderID
FROM Customers
	INNER JOIN Orders
    	ON Customers.CustomerID = Orders.CustomerID;

-- 2. Identify total orders for each customer, sort highest to lowest by order totals
SELECT 
    Customers.CustomerID,
    Customers.CustomerName,
    COUNT(Orders.OrderID) AS TotalOrders
FROM Customers
	INNER JOIN Orders
    	ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerID, Customers.CustomerName
ORDER BY COUNT(Orders.OrderID) DESC;