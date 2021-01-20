 use Company



create table Department(
departmentId integer  identity(1,1) primary key,
departmentName varchar(20) unique not null,
);

Insert into Department values ('Kalite'),('Ýdari'),('Ar-Ge'),('Teknik');


create table Job(
jobId int identity(1,1) primary key,
jobName varchar(20) unique not null,
);

Insert into Job values ('Mühendis'),('ÝK Uzmaný'),('Teknisyen');



create table City(
cityId char(2) primary key,
cityName varchar(20) unique not null
)

Insert into City values ('01','Adana'),('06','Ankara'),('34','Ýstanbul'),('35','Ýzmir');


create table Town (
townId int identity(1,1) primary key,
townName varchar(20) not null,
cityId char(2) not null references City(cityId),
constraint townSingle unique(townName,townId)
)

INSERT INTO Town VALUES 
('ÇANKAYA','06'),('POLATLI','06'),('YENÝMAHALLE','06'),('AVCILAR','34'),
('BEYLÝKDÜZÜ','34'),('ESENYURT','34'),('BUCA','35'),('KARÞIYAKA','35'),('KONAK','35');



create table Project(

projectId int identity(1,1) primary key,
projeName varchar(20) unique not null,
startingDate date not null,
finishingDate date not null

);
INSERT INTO Project VALUES
('AKILLI EVLER','2019.02.10','2020.09.29'),
('AKILLI SERA','2020.02.11','2021.10.29'),
('AKILLI OFÝS','2019.02.12','2020.12.21'),
('AKILLI ROBOT','2020.02.13','2021.11.09'),
('AKILLI OKULLAR','2019.02.14','2023.10.19');


create table Staff(
staffId int identity(1,1) primary key,
Name varchar(30) not null,
Surname varchar(30) not null,
Gender char(1) not null,
Birthday date not null,
Place_of_birth int references Town(townId) not  null,
business_Starting_date date not null,
departmentId int references Department(departmentId) not null,
jobId int references Job(jobId) not null,
Work_Time tinyint not null,
Salary money not null,
Premium money default 0
)


INSERT INTO Staff VALUES
('Burak','Þahin','E','1985.03.25',2,'2002.03.01',1,1,35,2500,350),
('Veli','Bakan','E','1980.04.15',3,'2002.05.03',2,2,30,2800,250),
('Ceyda','Tunç','K','1983.03.23',7,'2005.05.12',2,3,30,3000,250),
('Demet','ÇOLAK','K','1982.05.05',5,'2005.06.17',3,3,40,2800,350),
('Evrim','ÇITAK','K','1987.12.05',1,'2000.01.12',2,1,30,4500,500),
('Figen','ESMER','K','1982.10.22',4,'1998.05.07',1,2,35,4000,250),
('Galip','TANAR','E','1983.02.28',9,'1997.05.07',1,2,35,5200,450),
('Emir','YANIK','E','1975.05.07',2,'2010.07.17',2,2,45,4500,450),
('Ilgýn','ACI','E','1974.05.01',2,'2000.08.18',3,2,40,4200,400),
('Ýskender','TAÞ','E','1974.07.02',7,'1995.09.05',4,1,40,4400,400),
('Jale','CAN','K','1976.09.18',	5,'1998.10.12',2,2,45,3250,450),
('Kamil','ALBAYRAK','E','1976.08.19',9,'2000.11.25',1,2,30,5200,250),
('Leman','HASKIRIÞ','K','1978.09.20',6,'1999.10.27',1,2,35,4200,350),
('Meltem','UYSAL','K','1985.08.04',6,'2000.05.27',1,2,30,2500,100),
('Necati','UYSAL','E','1990.12.01',4,'2000.03.06',2,1,30,2000,150),
('Osman','UYSAL','E','1982.02.15',6,'1995.05.12',4,3,30,4800,150),
('Ömer','BUZDAÐ','E','1980.10.30',5,'2001.08.10',1,2,40,4800,400),
('Ecem','KANAT','K','1980.10.28',4,'2001.07.11',4,1,30,2200,300),
('Ramiz','ÇAKIR','E','1981.11.19',7,'2001.07.30',4,3,30,2700,300),
('Sertaç','KÖSEDAÐ','E','1981.12.20',9,'2002.12.20',3,2,30,2900,350),
('Ferit','ÇAPANOÐLU','E','1982.02.20',6,'1998.05.25',3,3,30,4800,200),
('Taner','BOZOKLU','E','1983.07.21',5,'2005.09.05',1,2,30,3000,200),
('Utku','DUMAN','E','1975.06.13',6,'2005.03.05',1,3,30,2800,200),
('Ümit','ÞÝRÝN','E','1978.04.02',7,'1998.04.04',2,2,35,3300,250),
('Veysel','ERTÜZÜN','E','1980.07.03',3,'2002.07.18',4,3,35,3100,300),
('Deniz','GÖKÇE','E','1975.06.18',2,'2002.03.25',4,3,35,3100,450),
('Zeynep','Çavuþ','K','1978.03.03',5,'2005.08.13',1,3,40,2500,500);