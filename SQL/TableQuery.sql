use SQL
GO
create table Personel
(

PersonelID int,
Name nvarchar(50),
SurName nvarchar(50),
Email nvarchar(60)

)

alter table Personel
Add PhoneNumber nvarchar(12)


alter table Personel
Drop PhoneNumber 


drop table Personel

