SELECT * FROM Customers
WHERE CompanyName LIKE 'a%'

SELECT * FROM Customers
WHERE CompanyName LIKE '%a%' 

--'%' steht für beliebiges Symbol, beliebig viele davon

SELECT * FROM Customers
WHERE CompanyName LIKE '_a%'

SELECT * FROM Customers
WHERE CompanyName LIKE '_____g%'

-- '_' genau EIN beliebiges Symbol

SELECT * FROM Customers
WHERE CompanyName LIKE '[abc]%'

SELECT * FROM Customers
WHERE CompanyName LIKE '[^abc]%'

SELECT * FROM Customers
WHERE CompanyName LIKE '[a-f]%' AND Country = 'Germany'

-- '[]' alles in den Klammern darf vorkommen (OR)

LIKE 'M[eay][iy]er%'



