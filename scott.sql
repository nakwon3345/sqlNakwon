desc emp;
select deptno �μ���ȣ, to_char(trunc(avg(sal), -2), '999,999')  ��ձ޿�, count(*) �ο��� from emp group by deptno order by ��ձ޿� desc;

select deptno �μ���ȣ, to_char(trunc(avg(sal), -2), '999,999') ��ձ޿�, count(*) �ο��� from emp group by deptno having avg(sal) > 2000 order by ��ձ޿� desc;

select ename from emp where empno = 7782;

select * from(select * from emp where empno = 7788);

select * from emp where job = upper('salesman') or job = upper('analyst') order by job;

select * from emp where job = 'salesman';

select * from emp where(select job from(where empno = 7369 or empno = 7499));

create table student_score(
    student_no number(5) primary key,
    name varchar2(30) not null,
    score number(3));
    
    select * from tab;
    desc student_score;
    drop table student_score;