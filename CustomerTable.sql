--Cleansed Customer Dimension Table

SELECT 
c.customerkey AS CustomerKey, 
c.firstname AS [FirstName], 
c.lastName AS [LastName], 
c.firstName + ' '+ lastname AS[Full Name], 
CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
c. datefirstpurchase AS [DateFirstPurchase],
g.City as [CustomerCity]
FROM 
[AdventureWorksDW2019].[dbo].[DimCustomer] AS c 
LEFT Join [AdventureWorksDW2019].[dbo].[DimGeography] AS g On g.GeographyKey = c.GeographyKey  -- Joined Customer city with Geography Table
ORder by CustomerKey ASC -- Ordered List by Customer Key