SELECT TOP 100 PERCENT
  p.[ProductKey]
  ,p.[ProductAlternateKey] AS ProductItemCode
  ,p.[EnglishProductName] AS [Product Name]
  ,ps.[EnglishProductSubcategoryName] AS [Sub Category] --joined with Sub Category Table
  ,pc.[EnglishProductCategoryName] AS [Product Category] --joined with Category Table
  ,p.[Color] AS [Product Color]
  ,p.[Size] AS [Product Size]
  ,p.[ProductLine] AS [Product Line]
  ,p.[ModelName] AS [Product Model Name]
  ,p.[EnglishDescription] AS [Product Description]
  ,ISNULL(p.[Status], 'Outdated') AS [Product Status]
FROM [dbo].[DimProduct] p
LEFT JOIN [dbo].[DimProductSubcategory] ps ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
LEFT JOIN [dbo].[DimProductCategory] pc ON ps.ProductCategoryKey = pc.ProductCategoryKey