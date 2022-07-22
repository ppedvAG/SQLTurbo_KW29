DECLARE @var1 int = 1
DECLARE @var2 int 
WHILE @var1 < 5
BEGIN
	SELECT 'Hallo'
	
	SET @var1 += 1

END

SELECT 'Fertig'


--SP Stored Procedures

ALTER PROC spTest @Land varchar(30) = 'Germany', @City varchar(30) = 'Berlin'
as
SELECT * FROM Customers
WHERE Country = @Land AND City = @City


EXEC spTest france, paris

