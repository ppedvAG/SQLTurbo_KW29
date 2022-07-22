--JOINs

SELECT * FROM Customers
WHERE CustomerID = 'ALFKI'

SELECT * FROM Orders
WHERE CustomerID = 'ALFKI'

--INNER Joins
SELECT customers.customerid, companyname, orderid FROM Customers
INNER JOIN Orders ON customers.customerid = orders.customerid
WHERE orders.CustomerID = 'ALFKI'

SELECT 
c.CustomerID as ID, 
o.OrderId as Bestellung, 
c.CompanyName as Firma, 
od.ProductID, 
p.ProductName 
FROM Customers c
INNER JOIN Orders o ON o.CustomerID = c.CustomerID
INNER JOIN [Order Details] od ON o.orderid = od.orderid
INNER JOIN Products p ON od.ProductID = p.ProductID
WHERE c.CustomerID = 'ALFKI'
ORDER BY Bestellung


--OUTER JOIN
SELECT * FROM 
Orders o RIGHT JOIN Customers c ON c.CustomerID = o.customerid
WHERE Orderid IS NULL



--CROSS JOIN
SELECT * FROM CUSTOMERS
CROSS JOIN Orders