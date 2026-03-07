create database multinationalCom;
use multinationalCom;

 create table company(id int primary key auto_increment);

 create table employee(emp_id int primary key,sal decimal(10,2),comp_id int,foreign key(comp_id) references company(id));

 create table table1(tab_id int unique,sal decimal(5,2));
create table table2(tab1_id int primary key,tab_id int,foreign key(tab_id) references table1(tab_id));

 create table customer(cus_id int primary key,cname varchar(20) not null,caddress varchar(50));
insert into customer value(1,'RENU','Aditya Nagar');
insert into customer value(2,'GOURI','sai Nagar');
insert into customer value(3,null,'Aditya Nagar');

select*from customer;

 create table marks(sid int primary key,sub varchar(20), marks int);
insert into marks value(1,'MATH',30);
insert into marks value(2,'SCIENCE',45);
insert into marks value(3,'SCIENCE',50);
select*from marks;

 create table account(aid int primary key,bank varchar(20),user varchar(20));
insert into account(aid,bank,user)
     values (1,'CANARA','ANITA'),
             (2,'SBI','DHRUV'),
             (3,'SBI','GOURI');
             select*from account;
create table transaction(tid int primary key,trans_bank varchar(20), user varchar(20),aid int,foreign key(aid) references account(aid));
insert into transaction(tid,trans_bank,user,aid)
values(101,'UNION','RAVI',1),
      (102,NULL,'DISHA',2),
      (103,'CANARA','DISHA',3);
      select*from transaction;

use a3;
 select ename from emp where deptno in(10,20);

 select*, sal*12 as annual_sal from emp where sal between 1000 and 4000 and sal*12>15000;

select ename,sal*12 as annual_sal from emp 
where (job='MANAGER' or job='CLERK')
and (deptno=10 or deptno=30);

 select*from emp
where job='PRESIDENT' and sal=4000;

 select ename,sal from emp
where sal>=1600;

 select* from emp
where (deptno=10 or deptno=20 or deptno=30 and deptno=40 or deptno=50 or deptno=60) and
(sal>1200 and sal<5000) and
(job='SALESMAN' or job='ANALYST' or job='DOCTOR' or job='PRESIDENT' or job='POLICE');

 select*from emp
where (ename='SMITH' or ename='JOHNS' or ename='SCOTT' or ename='KING') and
(job='CLERK' or job='PRESIDENT' or job='ANALYST' or job='MANAGER') and 
(deptno=10 or deptno=20 or deptno=30 or deptno=40 or deptno=50 or deptno=60 or deptno=70 or deptno=80 or deptno=90);

 select*from emp
where job in ('SALESMAN','ANALYST','PRESIDENT') and
deptno in (10,20,30,40,50);

 select ename,sal,comm
from emp
where comm is null;

 select ename,sal,sal*12 as annual_sal,deptno from emp
where deptno=20 and sal>1100 and sal*12>12000;

 select*, sal*12 as annual_sal from emp
where deptno=30 and job='SALESMAN' and sal*12>14000;

 select ename from emp 
where sal=3000;

use a3;
 select ename from emp
where comm is null and deptno <> 30;

 select ename,mgr,sal from emp 
where mgr is not null and 
sal not between 2000 and 5000;