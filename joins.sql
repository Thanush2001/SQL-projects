create database A
create table cricket(name char(10),age int)
insert into cricket values('anbu',25),('raja',26),('mani',27),('muthu',26),('guhan',25),('siva',26)
select*from cricket
create table foodball(name char(10),age int)
insert into foodball values('kesav',28),('arun',25),('vignesh',26),('siva',26),('anbu',25)
select*from foodball
select * from cricket left join foodball on cricket.name=foodball.name
select * from cricket right join foodball on cricket.name=foodball.name
select * from cricket left join foodball on cricket.name=foodball.name where foodball.name is null
select * from cricket right join foodball on cricket.name=foodball.name where cricket.name is null
select * from cricket inner join foodball on cricket.name=foodball.name
select * from cricket full join foodball on cricket.name=foodball.name 
select * from cricket left join foodball on cricket.name=foodball.name where foodball.name is null union all 
	select * from cricket right join foodball on cricket.name=foodball.name where cricket.name is null
select * from cricket left join foodball on cricket.name=foodball.name where foodball.name is null 
	union all 
	select * from cricket right join foodball on cricket.name=foodball.name where cricket.name is null 
	union all 
	select * from cricket inner join foodball on cricket.name=foodball.name


