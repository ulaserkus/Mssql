--Count
select count(*)from DimProduct where Color = 'Yellow'
--AVG
select AVG(SafetyStockLevel)from DimProduct 
where Color = 'Yellow'
--select distinct
select distinct SafetyStockLevel  from DimProduct
select Count(distinct SafetyStockLevel) from DimProduct
--select top
select top 10 Country  from Customers
select top 10 City  from Customers order by City desc
--Sum
select Sum(ProductSales) from [Sales by Category] 
--upper&lower
select lower(ProductName) from Products 
select upper(ProductName) from Products 
--len&datalen
select ProductName,len(ProductName) from Products --string length
select ProductName, datalength(ProductName) from Products --bit length
--concat
select CONCAT(ProductName,' ',UnitPrice) from Products
select ProductName +' '+ProductName  as Concat1 from Products
--left&right
select  ProductName,Left(ProductName,3) as First3 from Products 
select ProductName,RIGHT(ProductName,3) as Last3 from Products







