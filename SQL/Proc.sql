create Table Musteri(

ID int primary key ,
Name nvarchar(30),
SurName nvarchar(30),
Email nvarchar(60),
CreatingDate datetime  default getdate()

)

create Table MusteriBilgileri(

ID int primary key ,
UserName nvarchar(30) unique not null,
UserPassword nvarchar(30) check(len(UserPassword)>10),
SecretQuestion nvarchar(60),
Answer nvarchar(60) 
foreign key (ID) references Musteri(ID)
)

create procedure SP_Musteri_YeniKayit(
@ID int,
@Name nvarchar(30),
@SurName nvarchar(30),
@Email nvarchar(50),
@UserName nvarchar(50),
@UserPassword nvarchar(10),
@SecretQuestion nvarchar(50),
@Answer nvarchar(50)
)
as
begin
insert into Musteri(ID,Name,SurName,Email)values (@ID,@Name,@SurName,@Email)
	if (@@ROWCOUNT>0)
	begin
	insert into MusteriBilgileri(ID,UserName,UserPassword,SecretQuestion,Answer)values (@ID,@UserName,@UserPassword,@SecretQuestion,@Answer)
	end
end

Create Table Urun(

UrunID int primary key,
UrunName nvarchar(50) not null,
UrunQuantity int check(UrunQuantity>0)

)
Create Table Satis(

SatisID int primary key,
MusteriID int not null,
UrunID int not null,
SatisCount int check(SatisCount>0)
)