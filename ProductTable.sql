---Cleansed DIM_Product Table

SELECT 
p.[ProductKey], 
p.[ProductAlternateKey] as ProductItemCode, 
p.[EnglishProductName] as [Product Name], 
p.[Color] AS [Product Color] ,
p.[Size] as [Product Size] ,
p.[ProductLine] as [Product Line] ,
p.[ModelName] as [Product Model Name] ,
p.[EnglishDescription] as [Product Description] , 
ISNULL(p.[Status] , 'Outdated') as [Product Status]
FROM
[AdventureWorksDW2019].[dbo].[DimProduct] as p 
left join dbo.DimProductSubcategory as ps on ps.productsubcategorykey = p.productSubcategoryKey 
left join dbo.DimProductCategory as pc on ps.productcategorykey = pc.ProductCategoryKey 
order by 
p.ProductKey asc