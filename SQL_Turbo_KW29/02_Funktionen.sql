SELECT CONCAT(Firstname, ' ', Lastname, '100') FROM Employees
SELECT Firstname + ' ' + Lastname FROM Employees



SELECT CAST(OrderDate as time) FROM Orders


SELECT SUBSTRING(companyname, 1, 5) FROM Customers

SELECt len(Companyname) FROM Customers


DECLARE @var1 int = 10
SELECT SUBSTRING(Companyname, 1, @var1) FROM Customers


SELECT getdate() + 14

SELECT STUFF()