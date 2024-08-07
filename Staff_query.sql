create table staff(
	id serial primary key,
	name varchar(100),
	emp_id int,
	age int,
	department varchar(100)
)
select * from staff

insert into staff values (1,'Ananda',6406,60,'HR')
insert into staff values (2,'Monica',4705,52,'Marketing')
insert into staff values (3,'Michelle',5252,41,'Sales')
insert into staff values (4,'Wendy',7219,60,'IT')
insert into staff values (5,'Laura',5862,47,'HR')

copy staff from 'D:\DA-9\SQL\day-26\Staff_data.csv' DELIMITER ',' csv header

select * from staff

--distinct query

select * from staff

select department from staff
select distinct department from staff
select distinct age from staff

--where query

select * from staff

select * from staff where age = 60
select * from staff where age = 45
select * from staff where age > 45

--AND query

select * from staff where age = 60 AND department = 'HR'
select * from staff where age = 46 AND department = 'IT'

--OR query

select * from staff where age = 40 OR department = 'IT'
select * from staff where age = 78 OR department = 'Marketing'

--Not query

select * from staff where not age = 56
select * from staff where not age = 40

--update query

select * from staff where id = 6

update staff set age = 50 where id = 2
update staff set age = 35 where id = 6
update staff set name = 'Raman' where id = 6

--delete query

select * from staff

delete from staff where name = 'Wendy'
rollback

--Alter query

select * from staff

alter table staff add column mob_no double precision
update staff set mob_no = 9944646 where id = 5
alter table staff drop column mob_no

--IN query

select * from staff
select * from staff where id in (1,2,3)

--Between query

select * from staff where age >=50 AND age <=70
select * from staff

--Constraint query

alter table staff
add constraint check_age
check (age <=78)

alter table staff
add constraint check_name
check (name not in ('a1','b1','check'))

insert into staff values (1,'check',6406,60,'HR')

