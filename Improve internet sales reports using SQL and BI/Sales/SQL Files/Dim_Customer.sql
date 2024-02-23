-- clean DIM_CUSTOMER Table
SELECT 
  c.customerkey as [CustomerKey], 
  -- ,[GeographyKey]
  --  ,[CustomerAlternateKey]
  --  ,[Title]
  c.firstname as FirstName, 
  --[MiddleName]
  c.lastname as [LastName], 
  c.firstname + ' ' + lastname as [Full Name], --,[NameStyle],
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  CASE c.gender when 'M' then 'Male' when 'F' then 'Female' end as Gender, 
  --  ,[EmailAddress]
  -- ,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  c.datefirstpurchase as [DateFirstPurchase], -- ,[CommuteDistance]
  g.city as [Customer City] -- joined in customer  city from geography table
FROM 
  dbo.dimcustomer as c 
  left join dbo.dimgeography as g on g.geographykey = c.geographykey 
order by 
  Customerkey -- order by customer by acending
