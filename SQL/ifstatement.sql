declare @totalEntry int
select @totalEntry=COUNT(*)from DimProduct
print @totalEntry

if @totalEntry <= 100
begin
print'Toplam say�s� 100 den k���k veya e�it'
end
else if 100<@totalEntry and @totalEntry<=200
begin
print'toplam say� 100 ile 200 aras�ndad�r'
end
else
begin
print '200 den fazla giri� var'
end
