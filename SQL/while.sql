declare @name nvarchar(20)='Ulas Erkus'
declare @counter int = 0

while @counter <= len(@name)
begin
 print substring(@name,1,@counter)
 set @counter += 1
end