--local temp table
--global temp table


create table #Personel(

Id int primary key,
Name nvarchar(20) not null,
Surname nvarchar(10) not null

)
insert into #Personel (Id,Name,Surname) values(1,'ulas','erkus')


select * from #Personel

update #Personel
set
Name='Hasan'
where Id = 1

delete #Personel
where Id=1