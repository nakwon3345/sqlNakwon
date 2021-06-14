select * from emp;

select empno 사번, ename 이름, sal 급여, to_char(case when job = 'PRESIDENT' then (sal+nvl(comm,0)) * 0.15 when job = 'ANALYST' then (sal+nvl(comm,0)) * 0.1 when job = 'MANAGER' then (sal+nvl(comm,0)) * 0.15 else (sal+nvl(comm,0)) * 0.03 end, '999,999') 경조회비 from emp;
    
select case when job = 'PRESIDENT' then '15%' when job = 'ANALYST' then '10%' when job = 'MANAGER' then '10%' else '3%' end 경조회비 from emp;

select * from emp where job(select job from emp where empno = 7369 or empno = 7499);



select * from emp where job = (select job from emp where empno = 7369 or empno = 7499);




select decode(to_char(hiredate, 'mm'), '01', '1월', '02','2월','03','3월','04','4월','05','5월',
'06','6월','07','7월','08','8월','09','9월','10','10월','11','11월','12','12월')  날짜 from emp;
			 
select rpad(count, 2, '명') from emp where to_char(hiredate, 'mm') = '01';

select rpad(count(*), 3, '명') "1월" from emp where to_char(hiredate, 'mm') = '01';

select count(hiredate)"1월" from emp where to_char(hiredate, 'mm') = '01';

select empno 사번, ename 이름, case when job = 'PRESIDENT' then '15%' when job = 'ANALYST' then '10%' 
when job = 'MANAGER' then '10%' else '3%' end 경조회비, sal 급여, 
to_char(case when job = 'PRESIDENT' then (sal+nvl(comm,0)) * 0.15 when job = 'ANALYST' then (sal+nvl(comm,0)) * 0.1 
when job = 'MANAGER' then (sal+nvl(comm,0)) * 0.15 else (sal+nvl(comm,0)) * 0.03 end, '999,999') 경조회비 from emp;

select * from emp where job = any(select job from emp where empno = 7369 or empno = 7499);

select job from emp where empno = 7369 or empno = 7499;

select empno 사번, ename 이름, decode(job, 'PRESIDENT', '15%', 'ANALYST', '10%', 'MANAGER', '10%', '3%') 경조비율, sal 급여,
trunc(decode(job, 'PRESIDENT', (sal+nvl(comm, 0))*0.15, 
'ANALYST', (sal+nvl(comm,0))*0.1,
'MANAGER', (sal+nvl(comm,0))*0.1, (sal+nvl(comm,0))*0.03), -1) 경조회비 from emp;

select decode(job, 'PRESIDENT', '15%', 'ANALYST', '10%', 'MANAGER', '10%', '3%') 경조비율 from emp;