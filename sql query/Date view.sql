-- Date View
CREATE VIEW [Date Table] as
SELECT 
	   [DateKey]
      ,[FullDateAlternateKey] as 'Date'
	  ,[DayNumberOfWeek] as 'DayNo'
      ,[EnglishDayNameOfWeek] as 'Day'
      ,[EnglishMonthName] as 'Month'
	  ,Left([EnglishMonthName], 3) AS MonthShort
      ,[MonthNumberOfYear] as 'MonthNo'
      ,[CalendarQuarter] as 'Quarter'
      ,[CalendarYear] as 'Year'
  FROM 
       [AdventureWorksDW2019].[dbo].[DimDate]
  WHERE 
       CalendarYear >= 2019