create table play(
playcode int not null,
name varchar2(40),
shcedule date,
time varchar2(30),
actor varchar2(20)
);

select * from tab;
drop table test;
drop table emp_10;
drop table test_sample;
drop table play;
select * from play;

insert into play values (1, '뮤지컬 더 리퍼', to_date('2021-06-12'), '19:30~22:00', '문채원');
insert into play values (2, '옥탑방 고양이', to_date('2021-06-19'), '20:00~22:00', '남정은');
insert into play values (3, '피카츄의 대모험', to_date('2021-06-26'), '19:30~21:30', '소니아');
insert into play values (4, '낫아웃', to_date('2021-07-03'), '20:00~22:30', '송이재');
insert into play values (5, '행복', to_date('2021-07-10'), '19:30~21:30', '김단율');

update play set actor = '문채원';
commit;