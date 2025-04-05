SELECT TOP 100 PERCENT
  c.[CustomerKey]
  ,c.[FirstName] + ' ' + c.[LastName] AS FullName
  ,CASE c.[Gender] WHEN 'M' THEN 'Male' ELSE 'Female' END AS Gender
  ,c.[DateFirstPurchase]
  ,g.City AS [Customer City]
FROM [dbo].[DimCustomer] c
LEFT JOIN [dbo].[DimGeography] g ON c.GeographyKey = g.GeographyKey