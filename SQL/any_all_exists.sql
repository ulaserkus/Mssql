
select ContactName from Suppliers
where exists(select ProductName from Products where Products.SupplierID = Suppliers.SupplierID)



select ProductName from Products
where ProductID = any(select ProductID from [Order Details] where Quantity = 10)


select ProductName from Products
where ProductID = all(select ProductID from [Order Details] where Quantity = 10)

