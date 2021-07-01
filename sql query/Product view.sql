-- Product View
CREATE VIEW [Poduct Table] as
SELECT 
       [ProductKey]
      ,[ProductAlternateKey] as 'ProductItemCode'
      ,[EnglishProductName]
	  ,ps.EnglishProductSubcategoryName as 'Subcategory'
	  ,pc.EnglishProductCategoryName as 'Category'
      ,[Color] as 'Product Color'
      ,[Size] as 'Product Size'
      ,[ProductLine] as 'Product Line'
      ,[ModelName] as 'Product Model Name'
      ,[EnglishDescription]
      ,ISNULL (Status, 'Outdated') AS [Product Status]
FROM 
        [AdventureWorksDW2019].[dbo].[DimProduct] as p 
	left join
		[dbo].[DimProductSubcategory] as ps
	on ps.ProductSubcategoryKey = p.ProductSubcategoryKey
	left join
		[dbo].[DimProductCategory] as pc
	on pc.ProductCategoryKey = ps.ProductCategoryKey