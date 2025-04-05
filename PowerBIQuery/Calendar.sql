SELECT TOP 100 PERCENT
  [DateKey] 
  ,[FullDateAlternateKey] AS Date
  ,[EnglishDayNameOfWeek] AS Day
  ,[WeekNumberOfYear] AS WeekNo
  ,LEFT([EnglishMonthName], 3) AS MonthShort
  ,[MonthNumberOfYear] AS MonthNo
  ,[CalendarQuarter] AS Quarter 
  ,[CalendarYear] AS Year
FROM [dbo].[DimDate]
WHERE [CalendarYear] >= 2020	--2 years back in time
