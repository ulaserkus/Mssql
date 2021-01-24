select * into CustomersBackup2020 from Customers


select CompanyName,ContactName into CustomersBackupNew from Customers

insert into Ulas(ID)
select CompanyName from Customers;


