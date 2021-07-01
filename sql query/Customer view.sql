-- customer View
CREATE VIEW [Customer Table] as
SELECT  
       [CustomerKey]
      ,[FirstName]
      ,[LastName]
	  ,[FirstName]+' '+[LastName] as 'Full Name'
	  ,case Gender When 'M' then 'Male' when 'F' then 'Female' end as Gen
      ,[DateFirstPurchase] as 'First Purchase Date'
	  ,g.City as 'Customer City'

  FROM 
        [AdventureWorksDW2019].[dbo].[DimCustomer] as c 
      left join 
	    [dbo].[DimGeography] as g 
	  on g.GeographyKey=c.GeographyKey