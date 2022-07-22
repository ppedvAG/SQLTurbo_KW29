SELECT AVG(Unitprice) FROM Products

SELECT SUM(Unitprice*UnitsInStock) as Gesamtwert_Lager FROM Products

SELECT MIN(Unitprice) FROM Products
SELECT MAX(Unitprice) FROM Products

SELECT COUNT(ProductID) FROM Products

SELECT * FROM Products


SELECT AVG(UnitPrice), Productname FROM Products


SELECT ProductName, SUM(Unitprice*UnitsinStock) as Warenwert FROM Products
GROUP BY ProductName
ORDER BY Warenwert DESC

SELECT ProductName, ProductID, UnitPrice, SUM(Unitprice*UnitsinStock) as Lagerwert FROM Products
GROUP BY ProductName, ProductID, UnitPrice
HAVING SUM(Unitprice*UnitsinStock) > 2000
ORDER BY Lagerwert DESC


SELECT ProductName, ProductID, UnitPrice FROM Products
WHERE Unitprice > AVG(UnitPrice)


DECLARE @AVGUnit money
SET @AVGUnit = (SELECT AVG(Unitprice) FROM Products)

SELECT ProductName, ProductID, UnitPrice FROM Products
WHERE Unitprice > @AVGUnit


SELECT ProductName, ProductID, UnitPrice FROM Products
WHERE Unitprice > (SELECT AVG(Unitprice) FROM Products)



