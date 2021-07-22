--- Cleansed DIM_Date Table
SELECT [DateKey], 
[FullDateAlternateKey] AS Date, 
[EnglishDayNameOfWeek] AS Day, 
[EnglishMonthName] AS Month, 
Left([EnglishMonthName],3) As MonthShort , 
[MonthNumberOfYear] AS MonthNo, 
[CalendarQuarter] AS Quarter, 
[CalendarYear] AS Year 
FROM [AdventureWorksDW2019].[dbo].[DimDate] 
where [dbo].[DimDate].[CalendarYear] >=2019