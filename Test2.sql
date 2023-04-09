drop TABLE ProjMain
go
CREATE TABLE ProjMain
( Project_ID varchar (20),
Project_Name varchar (100),	
Snapshot_Date datetime,	
Latest_Snapshot	 varchar (10),	
A_ID INT)

insert into  ProjMain
values
('Helix_123','Puppet Asset Write-off','08-07-2018','No',1),
('Helix_123','Puppet Asset Write-off','10-07-2018','Yes',2),
('Helix_181','Restructure Program Professional Services','08-07-2018','No',3),
('Helix_181','Restructure Program Professional Services','10-07-2018','Yes',4),
('Helix_201','Surplus Lines Project','08-07-2018','Yes',5),
('Helix_221','Project Blue (AB) - Stock','09-07-2018','No',6),
('Helix_221','Project Blue (AB) - Stock','10-07-2018','No',7),
('Helix_221','Project Blue (AB) - Stock','10-07-2018','Yes',8);

drop table ProjDetail

create table ProjDetail
(Main	varchar(20),Section	varchar(20),SubSection	varchar(100),Type varchar(100), SubType varchar(100), Y2018	INT,Y2019 INT,Y2020 INT,Y2021 INT,A_ID INT)

insert into ProjDetail
values
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','New Labor Acquired (prof svcs, consulting, contingent, etc.)',3,0,8,7,1),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','Travel ',9,1,1,3,1),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','Severance',8,2,6,2,1),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','Lease termination',3,4,8,2,1),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','Contract termination',3,4,6,5,1),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','New Labor Acquired (prof svcs, consulting, contingent, etc.)',9,8,4,1,2),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','Travel ',3,9,9,2,2),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','Severance',3,3,9,2,2),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','Lease termination',1,3,9,4,2),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','Contract termination',0,1,1,3,2),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','New Labor Acquired (prof svcs, consulting, contingent, etc.)',4,1,0,4,3),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','Travel ',0,2,5,8,3),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','Severance',1,0,1,8,3),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','Lease termination',5,6,9,2,3),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','Contract termination',4,6,1,1,3),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','New Labor Acquired (prof svcs, consulting, contingent, etc.)',2,3,3,9,4),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','Travel ',0,3,4,8,4),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','Severance',3,2,7,1,4),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','Lease termination',3,1,0,7,4),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','Contract termination',0,0,4,4,4),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','New Labor Acquired (prof svcs, consulting, contingent, etc.)',6,0,1,5,5),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','Travel ',3,6,1,8,5),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','Severance',1,8,1,1,5),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','Lease termination',7,6,3,4,5),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','Contract termination',9,0,8,5,5),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','New Labor Acquired (prof svcs, consulting, contingent, etc.)',6,9,8,5,6),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','Travel ',5,3,6,9,6),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','Severance',5,7,1,1,6),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','Lease termination',7,4,6,4,6),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','Contract termination',3,5,2,6,6),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','New Labor Acquired (prof svcs, consulting, contingent, etc.)',0,6,8,6,7),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','Travel ',6,9,9,1,7),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','Severance',2,2,9,7,7),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','Lease termination',3,3,2,2,7),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','Contract termination',8,1,0,7,7),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','New Labor Acquired (prof svcs, consulting, contingent, etc.)',8,1,2,9,8),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','Travel ',9,4,7,8,8),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','Severance',2,3,5,8,8),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','Lease termination',0,1,6,2,8),
('Cost','One time Costs','ASC Expense - One time Costs','ASC Expense - One time Costs','Contract termination',2,7,5,8,8)


select Project_ID, 
		m1.E2018 - m2.E2018 as 'Expense 2018', 
		m1.E2019 - m2.E2019 as 'Expense 2019',
		m1.E2020 - m2.E2020 as 'Expense 2020',
		m1.E2021 - m2.E2021 as 'Expense 2021',
		m1.E2018 + m1.E2019 + m1.E2020 + m1.E2021
		- m2.E2018- m2.E2019- m2.E2020- m2.E2021 as 'Expense Total'
		from ProjMain m
		outer apply (
					select sum(Y2018) as E2018, sum(Y2019) as E2019, sum(Y2020) as E2020, sum(Y2021) as E2021 
					from ProjDetail d
					where d.A_ID = m.A_ID
					and d.subtype in ('Severance','Lease termination','Contract termination')
					) m1
		outer apply (
					select sum(Y2018) as E2018, sum(Y2019) as E2019, sum(Y2020) as E2020, sum(Y2021) as E2021 
					from ProjDetail d
					where d.A_ID = m.A_ID
					and d.subtype in ('Travel')
					) m2
where m.Latest_Snapshot = 'Yes';
