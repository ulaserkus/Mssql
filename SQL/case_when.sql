select (case Color
when 'White' then 'Beyaz'
when 'Blue' then 'Mavi'
when 'Black' then 'Siyah'
when 'Yellow' then 'Sar�'
when 'Grey' then 'Gri'
when 'Multi' then '�ok Renkli'
when 'Red' then 'K�rm�z�'
when 'NA' then 'Renksiz'
when 'Silver' then 'G�m��'
when 'Silver/Black' then 'Siyah/G�m��'
else 'Renk Tan�m� Yok'
end)as Renkler,EnglishProductName as [�r�n ad�] from DimProduct
