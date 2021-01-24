use veriTabaný

create table tblPerson(
Name nvarchar(20),
PhoneNumber nvarchar(20),
RegistrationDate date
)

begin
insert tblPerson(Name,PhoneNumber,RegistrationDate)values('ahmet','123456789','2020-12-01')
insert tblPerson(Name,PhoneNumber,RegistrationDate)values('ayþe','223456785','2020-12-02')
insert tblPerson(Name,PhoneNumber,RegistrationDate)values('veli','323456786','2020-12-03')
insert tblPerson(Name,PhoneNumber,RegistrationDate)values('hasan','423456787','2020-12-04')
insert tblPerson(Name,PhoneNumber,RegistrationDate)values('mehmet','523456788','2020-12-05')
end
--
select * from tblPerson
select * from tblPerson where Name='ahmet' or Name = 'veli'
select Name from tblPerson
select PhoneNumber from tblPerson
select Name,PhoneNumber from tblPerson
--
select * from tblPerson where RegistrationDate>='2020-11-01'
select *  from tblPerson where  RegistrationDate>='2020-12-01' and  RegistrationDate<='2020-12-30'
select * from tblPerson where RegistrationDate between '2020-11-01' and '2020-12-30'
--
select COUNT(*)as [kiþi sayýsý] from tblPerson
select Top 3 * from tblPerson
