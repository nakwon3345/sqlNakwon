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

insert into play values (1, '������ �� ����', to_date('2021-06-12'), '19:30~22:00', '��ä��');
insert into play values (2, '��ž�� �����', to_date('2021-06-19'), '20:00~22:00', '������');
insert into play values (3, '��ī���� �����', to_date('2021-06-26'), '19:30~21:30', '�ҴϾ�');
insert into play values (4, '���ƿ�', to_date('2021-07-03'), '20:00~22:30', '������');
insert into play values (5, '�ູ', to_date('2021-07-10'), '19:30~21:30', '�����');

update play set actor = '��ä��';
commit;