create table EmpTest3
(empid int, salary int, date datetime)

insert into EmpTest3
values
(	1	,	1000	,convert(datetime,'01-Jan-11')),
(	2	,	2000	,convert(datetime,'01-Jan-11')),
(	3	,	3000	,convert(datetime,'01-Jan-11')),
(	4	,	3000	,convert(datetime,'01-Jan-11')),
(	5	,	4000	,convert(datetime,'01-Jan-11')),
(	1	,	NULL	,convert(datetime,'01-Jan-12')),
(	2	,	NULL	,convert(datetime,'01-Jan-12')),
(	3	,	4000	,convert(datetime,'01-Jan-12')),
(	1	,	3000	,convert(datetime,'01-Jan-13')),
(	2	,	3000	,convert(datetime,'01-Jan-13')),
(	4	,	4000	,convert(datetime,'01-Jan-12')),
(	5	,	NULL	,convert(datetime,'01-Jan-12')),
(	3	,	NULL	,convert(datetime,'01-Jan-13')),
(	4	,	NULL	,convert(datetime,'01-Jan-13')),
(	5	,	NULL	,convert(datetime,'01-Jan-13')),
(	1	,	NULL	,convert(datetime,'01-Jan-14')),
(	2	,	4000	,convert(datetime,'01-Jan-14')),
(	3	,	5000	,convert(datetime,'01-Jan-14')),
(	1	,	4000	,convert(datetime,'01-Jan-15')),
(	4	,	NULL	,convert(datetime,'01-Jan-14')),
(	5	,	6000	,convert(datetime,'01-Jan-14')),
(	2	,	NULL	,convert(datetime,'01-Jan-15')),
(	3	,	5000	,convert(datetime,'01-Jan-15')),
(	4	,	6000	,convert(datetime,'01-Jan-15')),
(	5	,	NULL	,convert(datetime,'01-Jan-15'))



-- Previous salary value
with EmpData AS
	(select empid, salary, date, LAG  (salary ,1) OVER (PARTITION BY empid order by date ) PrevSalValue
	from EmpTest3 ) SELECT empid, salary, date,PrevSalValue FROM EmpData where empid = 4;

-- Previous salary value ignoring nulls
select e.*, EmpTest3_Prev.salary as PrevSalValue
	from EmpTest3 e outer apply 
		(select top 1 salary from EmpTest3 a where a.empid = e.empid and a.date < e.date and a.salary is not null order by a.date desc) EmpTest3_Prev
order by e.empid, e.date


