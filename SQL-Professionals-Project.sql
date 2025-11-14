create table Professionals(
Professional_ID int(3),
First_Name varchar(10),
Last_Name varchar(10),
Salary int(10),
Joining_Date DATETIME,
Department varchar(10)
);


select * from Professionals;


#Insert Value to Professionals Table
insert into Professionals(professional_id,First_Name,Last_Name,Salary,Joining_Date,Department)values
(001,"Mayank","Srivastava",100000,"2021-02-20 09:00:00","ENGINEER "),
(002,"Virat","Agnihotri",80000,"2021-06-11 09:00:00","Architect"),
(003,"Shubham","Srivastava",300000,"2021-02-20 09:00:00","ENGINEER"),
(004,"Sunil","Khurana",500000,"2021-02-20 09:00:00","Architect"),
(005,"Mohammad","Salman",500000,"2021-06-11 09:00:00","Architect"),
(006,"Prem","Modi",200000,"2021-06-11 09:00:00","Sales"),
(007,"Harsh","Shukla",75000,"2021-01-20 09:00:00","Sales"),
(008,"Pryag","Agarwal",9000,"2021-04-11 09:00:00","Architect"),
(009,"Anil","Rastogi",120000,"2021-02-20 09:00:00","Accounts"),
(010,"Amitabh","Singh",60000,"2021-06-11 09:00:00","Finance"),
(011," Jasbeer","Kaur",280000,"2021-02-20 09:00:00","Accounts"),
(012,"Srijan","Mahadev",500000,"2021-02-20 09:00:00","Sales"),
(013,"Mohammad","Salman",500000,"2021-06-11 09:00:00","Finance"),
(014,"Shakti","Khanna",230000,"2021-06-11 09:00:00","Engineer"),
(015,"Anand","Kapoor",45000,"2021-01-20 09:00:00","Accounts"),
(016,"Shiwali","Sethiya",22000,"2021-04-11 09:00:00","Architect"),
(017,"Virat","Jadeja",500000,"2021-06-11 09:00:00","Finance"),
(018,"Maan","Singh",200000,"2021-06-11 09:00:00","Engineer"),
(019,"Deepak","Pandey",78000,"2021-01-20 09:00:00","Accounts"),
(020,"Rahul","Sharma",9000,"2021-04-11 09:00:00","Architect");

#select department,substr(department,3,4)from Professionals;

#select first_name,right(first_name,3) from Professionals

#select first_name,left(first_name,3) from Professionals ;

/*select *from professionals
where Department ="sales";

select *from professionals
where Department in("sales","finance");

select *from professionals
where Department not in("sales","finance");*/

select substr(first_name,2,3)from professionals;
select right(first_name,4)from professionals;
select left(first_name,4)from professionals;

select department from professionals where  salary >200000;
select * from professionals where department in ("sales","finace");
select * from professionals where department not in ("sales");

select * from professionals where department ="sales" and salary >60000;
select * from professionals where department ="sales" or salary >60000;

select * from professionals
order by first_name desc
limit 7;

#count
select count(first_name) from professionals;

#sum
select sum(salary)from professionals;

# max
select MAX(salary) from professionals;

#min 
select min(salary)from professionals;

#avg 
select avg(salary)from professionals;

select department,FLOOR(avg(salary)) as avg_salary
from professionals
where joining_date >'2021-01-01'
group by department 
having avg(salary)>100000
order by avg_salary desc
limit 3;

select * from professionals;

#subquery
select professional_id from professionals  where Professional_ID%2=1;


select * from professionals where Professional_ID in
(select professional_id from professionals  where Professional_ID%2=1)
limit 5;

# q-1 print the data of peopele who have  salary between 100000 and 200000
# normal method
select Salary  from pro  where salary >=100000 and salary <=200000;
# subquery method 
select * from professionals where Salary  in
(select Salary  from professionals  where salary >=100000 and salary <=200000);

# between 
select * from professionals  where salary between 100000 and 200000
order by salary desc;

# Q-2 print all the  professionals who has salary more the average salary of all the professionals

select * from professionals where salary>
(select avg(salary)from professionals);

select * from professionals where Salary >(select avg(salary)from professionals) ;

 # q-3
 select upper (left(department,1)) from professionals;
 
 select lower(substr(department,2,100))from professionals;
 
 select concat(upper (left(department,1)) ,lower(substr(department,2,100)))as new_depart from professionals;

select * from professionals;


alter table professionals rename pro;

select * from pro;

alter table pro rename column professional_id to ID;
alter table pro rename column surname to Surname;
alter table pro rename column first_name to Name;
alter table pro add column pincode int(10);

alter table pro drop column pincode;




#data change  permenatly

update pro
set name = "dhiraj"
where id =3;

update pro
set salary = salary+5000;

update pro 
set salary = salary+1;
select * from pro;

update pro
set Department= concat(upper(left(department,1)),LOWER(substr(department,2,100)))
where Department = "ENGINEER ";
select * from pro;

delete from pro 
where Department="finance"

select * from pro;