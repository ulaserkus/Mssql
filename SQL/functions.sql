create function GetProductNameById(

@Id int

)
returns nvarchar(100)
as
begin
declare @ProductName nvarchar(100)

if(Exists(select count(*)from DimProduct where ProductKey =@Id))
begin
select @ProductName= EnglishProductName from DimProduct where ProductKey = @Id
end
else 
begin
set @ProductName ='Id not found'
end 
return @ProductName
end

select dbo.GetProductNameById(2)


create function IdProduct(
@Id int
)returns table
as
return select * from DimProduct where ProductKey = @Id

select * from dbo.IdProduct(2)



create function Personel(

)returns @PersonelTable table(

Id int,
Name nvarchar(10),
Surname nvarchar(20)
)
as
begin
insert into @PersonelTable(Id,Name,Surname) values (1,'ulas','erkus')
return
end

select * from dbo.Personel()
