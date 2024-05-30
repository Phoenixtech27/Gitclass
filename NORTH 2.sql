SELECT *
FROM categories

SELECT *
FROM customers

SELECT *
FROM employees

SELECT *
FROM products

SELECT *
FROM orders

SELECT *
FROM Suppliers

SELECT categoryname,description
FROM Categories
ORDER BY categoryname

SELECT ContactName, CompanyName, ContactTitle,Phone
FROM customers
ORDER BY Phone

SELECT Hiredate,UPPER(Firstname)AS First_name,UPPER(lastname)AS Last_name
FROM employees
ORDER BY hiredate DESC

SELECT OrderID, OrderDate, ShippedDate, CustomerID, Freight
FROM orders
ORDER BY Freight
LIMIT 10

SELECT LOWER(Customerid) AS ID
FROM customers

SELECT CompanyName, Fax, Phone, Country, HomePage
FROM Suppliers
ORDER BY Country DESC,Companyname ASC

SELECT CompanyName, ContactName,city
FROM customers
WHERE city= 'Buenos Aires'

SELECT  ProductName, UnitPrice, QuantityPerUnit,unitsinstock
FROM products
WHERE unitsinstock=0

SELECT ContactName, Address, City,country
FROM customers
WHERE Country NOT IN ('Germany','Mexico', 'Spain')

SELECT OrderDate, ShippedDate, CustomerID, Freight
FROM orders
WHERE orderdate='1996-05-21'

SELECT FirstName, LastName, Country
FROM employees
WHERE NOT country='USA'

SELECT Customers.CompanyName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CompanyName;