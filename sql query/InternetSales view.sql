-- InternetSales View
CREATE VIEW [InternetSales Table] as
SELECT 
	   [ProductKey]
      ,[OrderDateKey]
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]
      ,[SalesOrderNumber]   
      ,[SalesAmount] Sales
FROM 
        [AdventureWorksDW2019].[dbo].[FactInternetSales]
where
		LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) -2 -- Ensures we always only bring two years of date from extraction.
