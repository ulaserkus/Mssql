
--create proc
create procedure SelectAllCustomer
as
select * from Customers
go;

--run
exec SelectAllCustomer;

--create proc with params
create procedure selectAllCustomersWithOneParameter( 

@City nvarchar(20)

)
as
select  * from Customers 
where City = @City
go


--run
Exec selectAllCustomersWithOneParameter @City = 'Berlin'

--create
create procedure selectAllCustomersMultipleParameters( 

@City nvarchar(20),
@PostalCode nvarchar(20)
)
as
select  * from Customers 
where City = @City and PostalCode=@PostalCode
go

--run
exec selectAllCustomersMultipleParameters @City = 'London',@PostalCode = 'WA1 1DP'