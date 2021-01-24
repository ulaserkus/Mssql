select (case Color
when 'White' then 'Beyaz'
when 'Blue' then 'Mavi'
when 'Black' then 'Siyah'
when 'Yellow' then 'Sarý'
when 'Grey' then 'Gri'
when 'Multi' then 'Çok Renkli'
when 'Red' then 'Kýrmýzý'
when 'NA' then 'Renksiz'
when 'Silver' then 'Gümüþ'
when 'Silver/Black' then 'Siyah/Gümüþ'
else 'Renk Tanýmý Yok'
end)as Renkler,EnglishProductName as [ürün adý] from DimProduct
