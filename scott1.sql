select * from emp;

select empno ���, ename �̸�, sal �޿�, to_char(case when job = 'PRESIDENT' then (sal+nvl(comm,0)) * 0.15 when job = 'ANALYST' then (sal+nvl(comm,0)) * 0.1 when job = 'MANAGER' then (sal+nvl(comm,0)) * 0.15 else (sal+nvl(comm,0)) * 0.03 end, '999,999') ����ȸ�� from emp;
    
select case when job = 'PRESIDENT' then '15%' when job = 'ANALYST' then '10%' when job = 'MANAGER' then '10%' else '3%' end ����ȸ�� from emp;

select * from emp where job(select job from emp where empno = 7369 or empno = 7499);



select * from emp where job = (select job from emp where empno = 7369 or empno = 7499);




select decode(to_char(hiredate, 'mm'), '01', '1��', '02','2��','03','3��','04','4��','05','5��',
'06','6��','07','7��','08','8��','09','9��','10','10��','11','11��','12','12��')  ��¥ from emp;
			 
select rpad(count, 2, '��') from emp where to_char(hiredate, 'mm') = '01';

select rpad(count(*), 3, '��') "1��" from emp where to_char(hiredate, 'mm') = '01';

select count(hiredate)"1��" from emp where to_char(hiredate, 'mm') = '01';

select empno ���, ename �̸�, case when job = 'PRESIDENT' then '15%' when job = 'ANALYST' then '10%' 
when job = 'MANAGER' then '10%' else '3%' end ����ȸ��, sal �޿�, 
to_char(case when job = 'PRESIDENT' then (sal+nvl(comm,0)) * 0.15 when job = 'ANALYST' then (sal+nvl(comm,0)) * 0.1 
when job = 'MANAGER' then (sal+nvl(comm,0)) * 0.15 else (sal+nvl(comm,0)) * 0.03 end, '999,999') ����ȸ�� from emp;

select * from emp where job = any(select job from emp where empno = 7369 or empno = 7499);

select job from emp where empno = 7369 or empno = 7499;

select empno ���, ename �̸�, decode(job, 'PRESIDENT', '15%', 'ANALYST', '10%', 'MANAGER', '10%', '3%') ��������, sal �޿�,
trunc(decode(job, 'PRESIDENT', (sal+nvl(comm, 0))*0.15, 
'ANALYST', (sal+nvl(comm,0))*0.1,
'MANAGER', (sal+nvl(comm,0))*0.1, (sal+nvl(comm,0))*0.03), -1) ����ȸ�� from emp;

select decode(job, 'PRESIDENT', '15%', 'ANALYST', '10%', 'MANAGER', '10%', '3%') �������� from emp;