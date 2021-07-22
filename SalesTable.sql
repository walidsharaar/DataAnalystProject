-- Cleansed Fact_InternetSales Table

SELECT 
[ProductKey], 
[OrderDateKey] , 
[DueDateKey] ,
[ShipDateKey] ,
[CustomerKey] ,
[SalesOrderNumber] ,
[SalesAmount] 
FROM 
[AdventureWorksDW2019].[dbo].[FactInternetSales] 
where 
LEFT(OrderDateKey,4) >= YEAR(GETDATE())-2  -- gets two years back data from now
order by 
OrderDateKey ASC