-- Views
-- Stored Procedures
-- Joins
-- Group by

SeLeCt		* from 

	CustOMERS

SELECT * FROM customers -- Markierte Zeilen ausführen mit F5 oder STRG + E

--Kommentar einzeilig
Kein Kommentar
/* über mehrere
Zeilen
Kommentar bis Schließung */
Kein Kommentar

SELECT CompanyName, ContactName FROM Customers

SELECT CompanyName, ContactName FROM Customers

SELECT * FROM Customers
WHERE Country = 'Germany' OR Country = 'France'

SELECT * FROM Customers
WHERE Country != 'France'

SELECT * FROM Customers
WHERE (Country = 'France' OR Country = 'Germany') AND City = 'Berlin'

SELECT * FROM Customers
WHERE Country IN ('France', 'germany', 'Spain') -- IN(1, 2, 3) = viele OR Bedingungen

SELECT * FROM Customers
WHERE Country NOT IN ('France', 'germany', 'Spain') 

SELECT * FROM Orders
WHERE OrderDate BETWEEN '19970101' AND '19971231' -- Randwerte werden mit einbezogen
ORDER BY OrderDate 

SELECT * FROM Customers
WHERE Region IS NOT NULL

SELECT * FROM Customers
WHERE Region IS NULL


USE Northwind
SELECT * FROM Customers
ORDER BY Country, CompanyName DESC

SELECT TOP 30 PERCENT * FROM Customers

SELECT TOP 1 * FROM Customers
ORDER BY CustomerID DESC

SELECT  * FROM Customers
WHERE CustomerID NOT IN ((SELECT TOP 30 PERCENT CustomerID FROM Customers))
AND CustomerID NOT IN ((SELECT TOP 40 PERCENT CustomerID FROM Customers ORDER BY CustomerID DESC))


SELECT TOP 40 PERCENT * FROM Customers
ORDER BY CustomerID DESC