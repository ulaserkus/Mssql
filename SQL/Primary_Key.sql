

create Table table2(
ID int  primary key not null,
Name nvarchar(50) unique,
YearsOld int not null
)
insert into table2(ID,Name,YearsOld) values(1,'Name',12)
insert into table2(ID,Name,YearsOld) values(2,'Name2',4)
insert into table2(ID,Name,YearsOld) values(3,'Name3',25)

select * from table2







