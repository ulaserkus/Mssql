select * from Products 
where UnitPrice between 10 and 20

select max(UnitPrice) as 'Max' from Products
select min(UnitPrice) as 'Min' from Products


select ProductName,UnitPrice from  Products  order by ProductID
select ProductName,UnitPrice from  Products  order by ProductID desc
select ProductName,UnitPrice from  Products  order by ProductID asc

select distinct UnitPrice from Products





