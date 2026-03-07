use a3;

#QUERIES ON WHERE CLAUSE:

select sal*12 as annual_sal from emp
where ename='SMITH';

select ename from emp
where job='CLERK';

select sal from emp
where job='SALESMAN';

select * from emp
where sal>2000;

select * from emp
where ename='JONES';

select * from emp
where hiredate='1981-01-01';

select ename,sal*12 as annual_sal from emp
where sal*12>12000;

select empno from emp
where deptno=30;

select  * from emp
where job='MANAGER';

select ename,sal from emp
where comm=1400;

select * from emp
where comm>sal;

select empno from emp
where hiredate<'1987-01-01';

select * from emp
where job='ANALYST';

select * from emp
where sal>2000;


-----------------------
#QUERIES ON SPECIAL
select * from emp
where hiredate like '1981%' or hiredate like '1982%' or hiredate like'1983%';
select * from emp;

select ename from emp
where ename like ('A%') or ('E%') or ('I%') or ('O%') or ('U%');

select ename from emp
where job like ('A%') or ('E%') or ('I%') or ('O%') or ('U%');

select ename,job,hiredate from emp
where job not like (('_A') or ('_E') or ('_I') or ('_O') or ('_U'))
and hiredate like '1981%';


select ename,comm from emp 
where comm is null;

select ename from emp
where mgr is null;

select ename from emp
where deptno=30;

select job,sal from emp
where deptno=30 and sal>1500;

select ename from emp
where ename like ('S%') or ename like ('A%');

select ename,job,comm from emp
where comm is null and job='CLERK';

select ename from emp
where ename not like('S%');

select ename,deptno from emp
where mgr is null and deptno in (10,30);

select job from emp
where job='ANALYST' and deptno=20 and sal>2500;

select ename from emp
where ename like ('M%') or ename like ('J%');

select ename,sal*12 as annual_sal,deptno from emp 
where deptno not in (30);

select ename from emp
where ename not like ('%ES') and ename not like('%R');

select ename,sal+sal*0.1 as hike_sal from emp 
where mgr is not null and deptno=10;

select *from emp
where job = 'SALESMAN'
and ename LIKE '%E_'
and sal BETWEEN 1000 AND 9999;

select * from emp
where hiredate>'1981-12-31';

select * from emp
where hiredate like '____%02%';

select ename from emp
where job <> 'MANAGER' and job <> 'CLERK' and
deptno in (10,20) and
sal between 1000 and 3000;

select ename,job,deptno,sal from emp
where sal not between 1000 and 2000 and
deptno in (10,20,30) and
job <> 'SALESMAN';

select dname,loc from dept
where loc like ('%O%') and 
dname like ('%O%');

select ename,job from emp
where job like ('%MAN%');

select ename from emp
where hiredate > '1982-12-31'
and hiredate < '1987-01-01';

select* from emp
where hiredate like '%11%' or
hiredate like '%12%';

select ename,comm,sal from emp
where comm>sal;

select ename,job from emp
where mgr is not null and
ename like 'S%';

select ename,sal,sal*12 as annual_sal from emp
where sal*12 like '%0';

select * from emp
where ename like '%L%L%';

select * from emp
where ename like ('A%') or ename like ('E%') or ename like ('I%') or ename like ('O%') or ename like ('U%');