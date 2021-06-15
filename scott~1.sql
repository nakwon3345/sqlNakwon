select * from tab;

create table student_score(
    student_no number(5) primary key,
    name varchar2(30) not null,
    score number(3));
    
create table member(
    MEMBER_ID varchar2(30) PRIMARY KEY,
    MEMBER_PW varchar2(20) not null,
    NAME varchar2(20) NOT NULL,
    MOBILE varchar2(13) NOT NULL,
    EMAIL varchar2(30) NOT NULL,
    ENTRY_DATE varchar2(10) NOT NULL,
    GRADE varchar2(4) NOT NULL,
    MILEAGE varchar2(6),
    MANAGER varchar2(20));
    