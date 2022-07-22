-- Tables kopieren

SELECT * INTO BackupCustomers FROM Customers

--DELETE  = Datensatz löschen

DELETE FROM BackupCustomers
WHERE CustomerID = 'ALFKI'

--UPDATE = Zellen ändern

UPDATE BackupCustomers
SET City = 'Bonn'
WHERE CustomerID = 'PARIS'

SELECT * FROM BackupCustomers
WHERE Customerid = 'PARIS'

UPDATE BackupCustomers
SET ContactName = NULL
WHERE CustomerID = 'PARIS'


--INSERT Neuen Datensatz hinzufügen

INSERT INTO BackupCustomers (CustomerID, CompanyName, Country)
VALUES ('Edeka Markt', 'Germany')

SELECT * FROM BackupCustomers
WHERE Customerid = 'EDEKA'

INSERT INTO Orders (CustomerID)
VALUES ('ALFKI')


DROP TABLE BackupCustomers


--TRANS

BEGIN TRAN
DROP TABLE BackupCustomers

ROLLBACK
COMMIT

SELECT @@TRANCOUNT

SELECT * FROM BackupCustomers


--CREATE Table

ALTER Table Fuhrpark
ALTER Column

Kennzeichen varchar(10)  NULL


INSERT INTO Fuhrpark ()
Values ()

SELECT * FROM Fuhrpark