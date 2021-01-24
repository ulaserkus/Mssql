declare @totalEntry int
select @totalEntry=COUNT(*)from DimProduct
print @totalEntry

if @totalEntry <= 100
begin
print'Toplam sayýsý 100 den küçük veya eþit'
end
else if 100<@totalEntry and @totalEntry<=200
begin
print'toplam sayý 100 ile 200 arasýndadýr'
end
else
begin
print '200 den fazla giriþ var'
end
