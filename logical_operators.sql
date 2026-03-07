#assignment on logical operators
use a3;
select*from emp
where job='CLERK' and 
sal<1500;

select ename,hiredate from emp
where job='MANAGER' and deptno=30;

select*,sal*12 as annual_sal from emp
where deptno=30 and job='SALESMAN' and
sal*12 > 14000;

select * from emp
where deptno=30 or
job='ANALYST';

select ename from emp
where sal<1100 and
job='CLERK';

select ename,sal,sal*12 as annual_sal from emp
where deptno=20 and sal>1100 and
sal*12>1200;

select empno,ename from emp
where job='MANAGER' and deptno=20;

select* from emp
where deptno in (20,30);

select*from emp
where job='ANALYST' and
deptno=10;

select*from emp
where job='PRESIDENT' and
sal=4000;

select ename,deptno,job from emp
where job='CLERK' and
deptno in (10,20);

select*from emp
where job in ('CLERK','MANAGER') and
deptno=10;

select ename from emp
where deptno in(10,20,30,40);

select*from emp
where empno in(7902,7839);

select * from emp
where job in ('MANAGER','SALESMAN','CLERK');

select ename from emp
where hiredate > '1981-12-31' and
job='MANAGER' and
deptno=10;

select ename from emp
where hiredate>'1981-12-31' and
hiredate< '1987-01-01';

select * from emp
where sal>1250 and sal<3000;

select ename from emp
where hiredate>'1981-12-31' and
deptno in (10,30);

select ename,sal*12 as annual_sal from emp
where job in ('MANAGER','CLERK') and
deptno in (10,30);

select *,sal*12 as annual_sal from emp
where sal between 1000 and 4000
and sal*12>15000;