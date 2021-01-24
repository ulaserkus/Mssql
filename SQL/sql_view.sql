--creating view
create view [Mexico Customers]
as
select ContactName,Country from Customers where Country = 'Mexico'  

create view GreaterThanAverageProducts
as
select * from Products where UnitPrice>(select avg(UnitPrice) from Products)


select * from GreaterThanAverageProducts