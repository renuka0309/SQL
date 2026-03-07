create database company_db;
use company_db;
create table department (
    deptno int primary key, 
    dname varchar(20) unique,
    location varchar(20)
);
CREATE TABLE employee (
    empno INT PRIMARY KEY,
    ename VARCHAR(20) NOT NULL,
    job VARCHAR(20),
    mgr INT,
    hiredate DATE,
    sal DECIMAL(10,2),
    comm DECIMAL(10,2),
    deptno INT,
    FOREIGN KEY (mgr) REFERENCES employee(empno),
    FOREIGN KEY (deptno) REFERENCES department(deptno)
);
INSERT INTO department VALUES (10,'HR','DELHI');
INSERT INTO department VALUES (20,'SALES','MUMBAI');
INSERT INTO department VALUES (30,'IT','BANGALORE');

INSERT INTO employee VALUES (100, 'RAVI', 'MANAGER', NULL, '1981-01-10', 3000, NULL, 10);
INSERT INTO employee VALUES (101, 'ANU', 'CLERK', 100, '1982-03-15', 1200, NULL, 10);
INSERT INTO employee VALUES (102, 'RAJ', 'SALESMAN', 100, '1983-07-20', 1500, 500, 20);
INSERT INTO employee VALUES (103, 'PRIYA', 'ANALYST', 100, '1984-11-25', 2500, NULL, 30);

select* from employee;
select*from department;

select ename,sal,sal*12 as salary 
from employee 
where sal>1500;

select distinct job 
from employee 
where deptno in (10,30);

select * 
from employee 
where hiredate between '1982-01-01' and '1983-12-31';

select ename,sal+sal*0.1 as salary 
from employee 
where comm is null;

select* from employee 
where job<>'CLERK' 
and deptno<>20;

select distinct deptno,sal 
from employee 
where sal not between 1200 and 2500;

select ename, hiredate 
from employee 
where hiredate < '1983-01-01'
or hiredate > '1984-01-01';

select ename,job,sal*12 as salary 
from employee 
where job in ('MANAGER','ANALYST');

select* from employee 
where comm is not null and sal>1400;

select*,sal*12 as annual_sal
 from employee;
 
 select ename,job,sal-100 as penalty 
 from employee;
 
 select*,(sal+2000)*12 as bonus
 from emp;
 
 use a3;
 #display loc for smith's manager
 select mgr from emp where ename='smith';
 select deptno from emp where empno=7902;
 select loc from dept where deptno=20;
 
 #display smith manager's,manager's,manager's name
 select mgr from emp where ename='smith';
 select mgr from emp where empno=7902;
 select mgr from emp where empno=7566;
 select ename from emp where empno=7839;
 
 #display smith manager's,manager's,manager's name where manager's name start with consonant
 select mgr from emp where ename='smith';
 select mgr from emp where empno=7902;
 select mgr from emp where empno=7566;
 select ename from emp where empno=7839 
and ename not like('%a'or'%e'or'%i'or'%o'or'%u');

 #display loc for smith's manager's,manager's,manager's
 select mgr from emp where ename='smith';
 select mgr from emp where empno=7902;
 select mgr from emp where empno=7566;
 select ename from emp where empno=7839;
 select loc from dept where deptno=10;
 
#display all details of employee if employee earning maimum salary
select max(sal) from emp;

#display all details of employee hired first
select* from emp where hiredate='1980-12-17';

#display all the details of emp if emp hired last
select* from emp where hiredate='1987-05-23';

#display all the details of emp if emp working loc dallas
select deptno from dept where loc='dallas';
select*from emp where deptno=20;

#display all the details of emp if emp working in deptno where smith's manager is working
 select mgr from emp where ename='smith';
 select deptno from dept where empno=7902;
 select*from emp where deptno=20;
 

 


