select * from DimProduct

select ProductAlternateKey as 'Product Key',EnglishProductName as 'Key Name' from DimProduct 

select ProductAlternateKey,ProductSubcategoryKey from DimProduct 
where ( Color = 'Yellow' and ProductSubcategoryKey = 14)

select ProductAlternateKey, Color from DimProduct 
where ( Color = 'Yellow' or Color ='White')

select * from DimProduct
where ProductKey in(1,2,3,4,5)


select EnglishProductName from DimProduct
where EnglishProductName like 'FR%'

select EnglishProductName from DimProduct
where EnglishProductName not like 'FR%'


select EnglishProductName from DimProduct
where EnglishProductName  like '%s'


select EnglishProductName from DimProduct
where EnglishProductName  like '_____s'








