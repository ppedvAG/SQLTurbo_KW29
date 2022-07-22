SELECT DISTINCT
Companyname, 
year(OrderDAte) as Geschäftsjahr, 
SUM(Freight) OVER(Partition by Companyname, year(orderdate)) as SUMfreightYear,
SUM(Freight) OVER(Partition by Companyname) as SUMfreightAll,
SUM(Freight) OVER() as SUMfreightAllShippers,
AVG(Freight) OVER(Partition by Companyname, year(orderdate)) as AVGfreightYear
FROM Orders o
JOIN Shippers s ON o.shipvia = s.ShipperID
GROUP BY Companyname, year(OrderDate), freight
