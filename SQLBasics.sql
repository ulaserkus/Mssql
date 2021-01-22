select * from ShopApp.Products
select Name from ShopApp.Products
select Name,Price from ShopApp.Products
select Name as ProductName from ShopApp.Products

 select * from ShopApp.Products where id = 1
 select * from ShopApp.Products where Price >= 2000 and Price < 4000
 select * from ShopApp.Products where Name='Samsung s5'or Name = 'Samsung s6'
 select * from ShopApp.Products where  Name!='Samsung s5'and  Name != 'Samsung s6'
 select * from ShopApp.Products where id not between  1 and 2
 select * from ShopApp.Products where Category In('Phone')
 select * from ShopApp.Products where Name  like '%Samsung%'
 select * from ShopApp.Products order by Name 
 select * from ShopApp.Products order by Price desc
 select * from ShopApp.Products order by Price asc

-- sql fonksiyonlar min(),max(),count(),avg(),sum()

select min(Price) as 'Minimum' from ShopApp.Products
select max(Price) as 'Max' from ShopApp.Products
select Name ,Price from ShopApp.Products order by Price Limit 1
select count(id) as "Adet"  from ShopApp.Products 
select avg(Price) as Ortalama from ShopApp.Products
select sum(Price) as Toplam from ShopApp.Products

-- string functions
select length('Ulaş') as uzunluk
select name , concat(left(Name,3),'...') from ShopApp.Products


-- distinc & group by
select distinct Category from ShopApp.Products
select  Category, count(*) from ShopApp.Products group by Category
select  Category, sum(Price)as toplam  from ShopApp.Products group by Category

-- INSERT ekleme

INSERT INTO ShopApp.Products(Name,Price,imageUrl,Category) values("Iphone 12",10000,"5.jpg","Phone");

-- UPDATE güncelleme
 SET SQL_SAFE_UPDATES=0;
 UPDATE ShopApp.Products SET Price = Price + 1000;
-- select * from ShopApp.Products
-- DELETE 
 DELETE from  ShopApp.Products where Price>2000 and Category = 'Computer'
