-- 1-2-3
select * from Nurse where Registered = 0
select Name,Position from Nurse where Position = 'Head Nurse'
select d.Name,p.Name from Department d,Physician p
where p.EmployeeID = d.Head

-- 4-5-6
select count(distinct Patient) as [En az 1 kere muayene olan hastalar] from Appointment 
where  Patient >= 1
select RoomNumber,BlockFloor,BlockCode from Room where RoomNumber = 212
select * from Room where Unavailable = 0
select count(*) as [Müsait Oda Sayýsý] from Room where Unavailable = 0

-- 7-8
select p.Name,d.Name from Physician p,Department d,Affiliated_With a
where p.EmployeeID = a.Physician and d.DepartmentID = a.Department
select p.Name,pr.Name,pr.Cost from Physician p,Procedures pr,Trained_In t
where p.EmployeeID = t.Physician and t.Treatment = pr.Code

-- 9-10-11
select * from Physician 
left join Trained_In on Physician.EmployeeID = Trained_In.Physician
where Trained_In.Treatment is null
select pa.Name,pa.Address,p.Name from Patient pa
join Physician p on pa.PCP = p.EmployeeID
select p.Name,a.Patient from Appointment a
join Patient p on a.Patient = p.SSN 

-- 12-13-14
select distinct a.Patient from Appointment a where a.ExaminationRoom = 'c'

select count(distinct a.Patient) as [c odasýnda tedavi gören farklý hastalar] from Appointment a where a.ExaminationRoom = 'c'

select  Nurse.Name,Appointment.ExaminationRoom from Appointment
join Nurse on Nurse.EmployeeID = Appointment.PrepNurse

-- 15-16

select Nurse.Name AS NURSE,Physician.Name AS DOCTOR,Patient.Name AS PATÝENT from Appointment
join Nurse on Appointment.PrepNurse = Nurse.EmployeeID
join  Physician on Appointment.Physician = Physician.EmployeeID
join Patient on Appointment.Patient = Patient.SSN

select Patient.Name as 'Hasta Adý' ,Physician.Name as 'Doktor Adý' from Appointment 
join Patient on Patient.SSN = Appointment.Patient
join Physician on Appointment.Physician = Physician.EmployeeID
 where PrepNurse is null
 
 -- 17-18
 select * from Medication
 
 select Physician.Name[doktor adý],Patient.Name as[hasta adý],Medication.Name as [ilaç adý] from Prescribes 
 join Medication on Prescribes.Medication = Medication.Code
 join Patient on Prescribes.Patient = Patient.SSN
 join Physician on Prescribes.Physician = Physician.EmployeeID
 
 select t.Name as hasta ,p.Name doktor,m.Name as ilaç from Patient T
 join Prescribes S on T.SSN = S.Patient
 join Physician P on P.EmployeeID = s.Physician
 join Medication M on M.Code = s.Medication
 where s.Appointment is not null
 
 -- 19-20-21-22-23-24-25
 select t.Name as hasta ,p.Name doktor,m.Name as ilaç from Patient T
 join Prescribes S on T.SSN = S.Patient
 join Physician P on P.EmployeeID = s.Physician
 join Medication M on M.Code = s.Medication
 where s.Appointment is null

 select BlockCode as 'blok kodu',count(*) as 'uygun oda sayýsý' from Room 
 where Unavailable = 0 group by BlockCode
  
  select BlockFloor as 'blok Katý',count(*) as 'uygun oda sayýsý' from Room 
 where Unavailable = 0 group by BlockFloor

  select  BlockCode as 'blok kodu',BlockFloor as 'blok Katý',count(*) as 'uygun oda sayýsý' from Room 
 where Unavailable = 0 group by BlockFloor,BlockCode

 select  BlockCode as 'blok kodu',BlockFloor as 'blok Katý',count(*) as 'uygun olmayan oda sayýsý' from Room 
 where Unavailable = 1 group by BlockFloor,BlockCode

 
 select BlockFloor as 'blok Katý',count(*) as 'uygun olmayan oda sayýsý' from Room 
 where Unavailable = 1 group by BlockFloor
 having count(*)=(select max(z) as 'En yüksek deðer' from (
 select BlockFloor,count(*) as z from Room 
 where  Unavailable=1
 group by BlockFloor 
 )as t);

 select BlockFloor as 'blok Katý',count(*) as 'uygun olan oda sayýsý' from Room 
 where Unavailable = 0 group by BlockFloor
 having count(*)=(select max(z) as 'En yüksek deðer' from (
 select BlockFloor,count(*) as z from Room 
 where  Unavailable= 0
 group by BlockFloor 
 )as t)

 -- 26-27

 select p.Name as [Hasta],r.RoomNumber as [oda numarasý],r.BlockCode as [blok],r.BlockFloor  as [kat numarasý] from Stay s 
 join Patient p on s.Patient = p.SSN
 join Room r on s.Room = r.RoomNumber

 select n.Name as 'Hemþire Adý',o.BlockFloor as [kat numarasý] ,o.BlockCode as [blok] from Nurse n
 join On_Call o on o.Nurse = n.EmployeeID
 
 -- 28

 select p.Name as Hasta,ph.Name as Doktor,n.Name as Hemþire,
 u.DateUndergoes as 'Tedavi Tarihi',r.RoomNumber as 'Oda Numarasý',
 r.BlockFloor as 'Kat Numarasý',r.BlockCode as [Blok Kodu]
 from Undergoes u
 join Patient p on u.Patient = p.SSN
 join Physician ph on u.Physician = ph.EmployeeID
 left join Nurse n on u.AssistingNurse = n.EmployeeID
 join Stay s on u.Stay = s.StayID
 join Room r on s.Room = r.RoomNumber

-- 29
select u.Physician,(select Name  from Physician where Physician.EmployeeID = u.Physician) from Undergoes u
left join Trained_In t on
u.Physician = t.Physician and u.Procedures = t.Treatment
where Treatment is null 

select Name from Physician where EmployeeID IN  (select u.Physician  from Undergoes u
left join Trained_In t on
u.Physician = t.Physician and u.Procedures = t.Treatment
where Treatment is null )

--30
select p.Name as Doktor,pr.Name as Tedavi ,u.DateUndergoes as Tarih,pt.Name as Hasta from Physician p , Undergoes u , Patient pt , Procedures pr
where u.Patient = pt.SSN 
and u.Procedures = pr.Code
and u.Physician = p.EmployeeID 
and not exists(
select * from Trained_In t 
where t.Treatment = u.Procedures
and t.Physician = u.Physician
)
--31
select n.Name as Hemþire,r.RoomNumber as 'Oda Numarasý',o.BlockCode as Blok,o.BlockFloor Kat,o.OnCallStart as 'Mesai Baþlangýcý',o.OnCallEnd as 'Mesai Bitiþi' from Nurse n,Room r,On_Call o 
where n.EmployeeID = o.Nurse
and o.BlockFloor = r.BlockFloor
and o.BlockCode = r.BlockCode
and r.RoomNumber = 122

--32
select pt.Name as Hasta,p.Name as Doktor  from Patient pt
join Prescribes pr on pr.Patient = pt.SSN
join Physician p on p.EmployeeID =pt.PCP
where pt.PCP = pr.Physician and pt.PCP =p.EmployeeID
