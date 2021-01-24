
create table #Personel (

Id int primary key,
Name varchar(50) not null

)

begin try
 insert into #Personel(Id,Name) values (1,'Ulas')
end try

begin catch
print 'Hata Oluþtu'
end catch

select * from #Personel