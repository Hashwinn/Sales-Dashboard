SELECT TOP 100 PERCENT
		[ProductKey]
      ,[OrderDateKey]
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]
      ,[SalesOrderNumber]
      ,[SalesAmount]
FROM [dbo].[FactInternetSales]
WHERE LEFT(OrderDateKey, 4) >= YEAR(GETDATE()) - 2 --ensures that we only bring 2 years of date from extraction
ORDER BY OrderDateKey
