create table employees (emp_id int not null, primary key(emp_id), emp_name varchar(50), emp_age int, 
emp_gender varchar(10), emp_dept varchar(50),year_of_Joining int, emp_salary int);

select * from employees

insert into employees(emp_id,emp_name,emp_age,emp_gender,emp_dept,year_of_joining,emp_salary) values
(1,'Ganesh',25,'Male','Network',2015,50000),
(2,'Sharika',35,'Female','EB',2014,30000),
(3,'Saidharshan',31,'Male','EB',2010,28000),
(4,'Deepika',29,'Female','Network',2017,34000),
(5,'Swetha',26,'Female','EB',2015,18000),
(6,'Thiyagaraj',38,'Male','IT',2014,29000),
(7,'Abitha',25,'Female','IT',2022,30000),
(8,'Thanush',23,'Male','IT',2022,24000),
(9,'Vignesh',21,'Male','EB',2020,32000),
(10,'Vinitha',22,'Female','Network',2021,19000);

/* 1> How many male and female employees are there in the organization? */
select emp_gender,count(*) as number from employees group by emp_gender;

/* 2> Print the name of all the deparment in the organization? */
select distinct emp_dept from employees

/* 3> What is the average age of male and female employees? */
select emp_gender,max(emp_age) as avg_emp_age from employees group by emp_gender

/* 4> Get the detyails of highest paid employee in the organization? */
select *from employees where emp_salary=(select max(emp_salary) from employees)

/* 5> Get the names of all employees who have joined after 2015? */
select emp_name,emp_dept,emp_id from employees  where year_of_joining > 2015

/* 6> Count the number of employee in each department? */
select emp_dept,count(*) as emp_dept_count from employees group by emp_dept

/* 7> What is the average salary of each department? */
select emp_dept,max(emp_salary) as avg_emp_salary from employees group by emp_dept

/* 8> Get the deatails of youngest male emp in the "EB"  department? */
select * from employees  where emp_dept like 'EB'(select min(emp_age)from employees)

/* 9> Who has the most working experience in the organization? */
select emp_name from employees where year_of_joining=(select min(year_of_joining)from employees)

/* 10> How many males and female employees are there in sales and marketing team? */
select emp_gender,count(emp_name)  from employees where emp_dept='EB' group by emp_gender 

/* 11> What is the average salary of male and female employees? */
select emp_gender,avg(emp_salary) as avg_emp_salary from employees group by emp_gender

/* 12> List down the names of all employees in each department? */
select emp_name,emp_dept from employees order by emp_dept

/* 13> What is the average salary and total salary of the whole organization? */
select sum(emp_salary ) as emp_total_salary,avg(emp_salary) as emp_avg_salary from employees

/* 14> Seperate the emoloyee who are younger or equal to 25 years from those employees who are older than 25 years? */
select emp_name,emp_age from employees  where emp_age<=25 

/* 15> Who is the oldest emoployee in the organization ? What is his age and which department he belongs to? */
select * from employees where year_of_joining=(select min(year_of_joining)from employees)
