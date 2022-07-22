CREATE VIEW vBestelldaten
as
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

SELECT * FROM vBestelldaten
WHERE CustomerID = 'BONAP'


DROP VIEW vBestelldaten


ALTER VIEW vBestelldaten
as
SELECT 
c.CustomerID, 
o.OrderId as Bestellung, 
c.CompanyName as Firma, 
od.ProductID, 
p.ProductName 
FROM Customers c
INNER JOIN Orders o ON o.CustomerID = c.CustomerID
INNER JOIN [Order Details] od ON o.orderid = od.orderid
INNER JOIN Products p ON od.ProductID = p.ProductID



--TEMP Tables (#)

SELECT * INTO #TempTable FROM Customers 
WHERE Country = 'Germany'

SELECT * FROM #TempTable
WHERE City = 'Berlin'

DROP TABLE #TempTable

--globale TEMP Tables (##)
