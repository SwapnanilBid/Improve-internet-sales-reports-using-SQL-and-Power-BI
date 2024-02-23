SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] as ProductItemCode, 
  --  ,[ProductSubcategoryKey]
  --  ,[WeightUnitMeasureCode]
  --  ,[SizeUnitMeasureCode]
  p.[EnglishProductName] as [Product Name], 
  ps.[EnglishProductSubcategoryName] as [Sub Category], 
  ps.[ProductCategoryKey] as [Product Category], 
  --  ,[SpanishProductName]
  --  ,[FrenchProductName]
  --   ,[StandardCost]
  --   ,[FinishedGoodsFlag]
  p.[Color] as [Product Color], 
  --   ,[SafetyStockLevel]
  --   ,[ReorderPoint]
  --  ,[ListPrice]
  p.[Size] as [Product Size], 
  --  ,[SizeRange]
  --  ,[Weight]
  -- ,[DaysToManufacture]
  p.[ProductLine] as [Product Line], 
  --  ,[DealerPrice]
  --  ,[Class]
  --  ,[Style]
  p.[ModelName] as [Product Model Name], 
  -- ,[LargePhoto]
  p.[EnglishDescription] as [Product Description], 
  ISNULL (p.status, 'Outdated') as [Product Status] 
FROM 
  [dbo].[DimProduct] as p 
  LEFT JOIN dbo.DimProductSubcategory as ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN dbo.DimProductCategory as pc ON ps.ProductCategoryKey = pc.ProductCategoryKey 
ORDER BY 
  p.ProductKey
