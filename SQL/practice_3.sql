use Students

create table Students(
Id int identity(1,1),
FullName nvarchar(20) not null,
Birthday Date not null,
registirationDate date not null
primary key(Id)
)
--
select * from Students
select FullName as 'Ad Soyad' from Students
select FullName+' (2B)' as 'Ad Soyad' from Students
select concat(FullName,' ',Id) as 'Ad Soyad' from Students
select FullName +' '+ CONVERT(nvarchar(20),getdate()) from Students
--
select * from Students where FullName ='ulaþ erkuþ' or Birthday >= '1993-02-01'
select * from Students where FullName != 'ulaþ erkuþ'
select * from Students where Birthday is null
select * from Students where Birthday is not null
--
select * from Students where FullName like 'baran%'
select * from Students where FullName like 'a%'
select * from Students where FullName like '%e%'
--
select * from Students order by FullName asc
select * from Students order by FullName desc
--
select top 1 * from Students order by NEWID()
