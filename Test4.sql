create table EmpTest4
(empid int, startdate datetime, dept int)

insert into EmpTest4(empid,startdate,dept)
values 
(1,'20000101',101),
(2,'20030401',101),
(3,'20020701',101),
(1,'20020701',102),
(2,'20050101',102),
(1,'20030401',103),
(3,'20050101',102),
(4,'20030401',101),
(5,'20030401',101),
(1,'20050101',104),
(2,'20060701',103),
(3,'20060701',103),
(4,'20070101',102)
 

with EmpData AS
	(select empid, startdate, dept, LEAD  (startdate,1) OVER (PARTITION BY empid order by startdate) NextDeptDate
	from EmpTest4 ) SELECT empid, startdate, dept,DATEDIFF(d,startdate,NextDeptDate) as NumberOfDaysInDept FROM EmpData;