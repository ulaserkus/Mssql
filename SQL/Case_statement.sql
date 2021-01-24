select OrderID,Quantity,
case 
 when Quantity >30 then 'The quantity is greater than thirty'
 when Quantity = 30 then 'The quantity is  thirty'
 else 'The quantity is under thirty'
 end as QuantityText

from [Order Details] 

select ContactName,City,Country from Customers
order by (
  case 
  when City is null  then Country
  else City
  end
);
