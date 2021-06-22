-- 멤버 테이블 생성(member_id, mobile 중복 불가)
create table member(
member_id varchar2(30) not null,
member_pw varchar2(30) not null,
name varchar(20) not null,
mobile varchar2(30) not null,
constraint member_member_id_pk primary key(member_id),
constraint member_member_id_uk unique(member_id, mobile));

-- 공연 정보 테이블 생성
create table play(
playcode number(38) not null,
name varchar2(40) not null,
shcedule date not null,
time varchar2(30) not null,
actor varchar2(20) not null,
constraint play_playcode_pk primary key(playcode),);

-- 공연 정보 추가
insert into play values (1, '뮤지컬 더 리퍼', to_date('21/06/12','yy/mm/dd'), '19:30~22:00','문채원');
insert into play values (2, '옥탑방 고양이', to_date('21/06/19','yy/mm/dd'), '20:00~22:00','남정은');
insert into play values (3, '피카츄의 대모험', to_date('21/06/26','yy/mm/dd'), '19:30~21:00','소니아');
insert into play values (4, '낫아웃', to_date('21/07/03','yy/mm/dd'), '20:00~22:30','송이재');
insert into play values (5, '행복', to_date('21/07/10','yy/mm/dd'), '19:30~21:30','김단율');

-- 뮤지컬 더 리퍼 좌석 테이블
create table seatripper(
grade varchar2(20) not null,
seat varchar2(20) not null,
selectseat varchar2(20) not null,
checkreserve varchar2(30));

-- 뮤지컬 더 리퍼 좌석 추가
insert into seatripper values('VIP', 'V-1', 'V1', '예약가능');
insert into seatripper values('VIP', 'V-2', 'V2', '예약가능');
insert into seatripper values('VIP', 'V-3', 'V3', '예약가능');
insert into seatripper values('VIP', 'V-4', 'V4', '예약가능');
insert into seatripper values('VIP', 'V-5', 'V5', '예약가능');
insert into seatripper values('VIP', 'V-6', 'V6', '예약가능');
insert into seatripper values('VIP', 'V-7', 'V7', '예약가능');
insert into seatripper values('VIP', 'V-8', 'V8', '예약가능');
insert into seatripper values('VIP', 'V-9', 'V9', '예약가능');
insert into seatripper values('VIP', 'V-10', 'V10', '예약가능');
insert into seatripper values('R', 'R-1', 'V1', '예약가능');
insert into seatripper values('R', 'R-2', 'V2', '예약가능');
insert into seatripper values('R', 'R-3', 'V3', '예약가능');
insert into seatripper values('R', 'R-4', 'V4', '예약가능');
insert into seatripper values('R', 'R-5', 'V5', '예약가능');
insert into seatripper values('R', 'R-6', 'V6', '예약가능');
insert into seatripper values('R', 'R-7', 'V7', '예약가능');
insert into seatripper values('R', 'R-8', 'V8', '예약가능');
insert into seatripper values('R', 'R-9', 'V9', '예약가능');
insert into seatripper values('R', 'R-10', 'V10', '예약가능');
insert into seatripper values('S', 'S-1', 'V1', '예약가능');
insert into seatripper values('S', 'S-2', 'V2', '예약가능');
insert into seatripper values('S', 'S-3', 'V3', '예약가능');
insert into seatripper values('S', 'S-4', 'V4', '예약가능');
insert into seatripper values('S', 'S-5', 'V5', '예약가능');
insert into seatripper values('S', 'S-6', 'V6', '예약가능');
insert into seatripper values('S', 'S-7', 'V7', '예약가능');
insert into seatripper values('S', 'S-8', 'V8', '예약가능');
insert into seatripper values('S', 'S-9', 'V9', '예약가능');
insert into seatripper values('S', 'S-10', 'V10', '예약가능');

-- 옥탑방 고양이 좌석 테이블
create table seatcat(
grade varchar2(20) not null,
seat varchar2(20) not null,
selectseat varchar2(20) not null,
checkreserve varchar2(30));

-- 옥탑방 고양이 좌석 추가
insert into seatcat values('VIP', 'V-1', 'V1', '예약가능');
insert into seatcat values('VIP', 'V-2', 'V2', '예약가능');
insert into seatcat values('VIP', 'V-3', 'V3', '예약가능');
insert into seatcat values('VIP', 'V-4', 'V4', '예약가능');
insert into seatcat values('VIP', 'V-5', 'V5', '예약가능');
insert into seatcat values('VIP', 'V-6', 'V6', '예약가능');
insert into seatcat values('VIP', 'V-7', 'V7', '예약가능');
insert into seatcat values('VIP', 'V-8', 'V8', '예약가능');
insert into seatcat values('VIP', 'V-9', 'V9', '예약가능');
insert into seatcat values('VIP', 'V-10', 'V10', '예약가능');
insert into seatcat values('R', 'R-1', 'V1', '예약가능');
insert into seatcat values('R', 'R-2', 'V2', '예약가능');
insert into seatcat values('R', 'R-3', 'V3', '예약가능');
insert into seatcat values('R', 'R-4', 'V4', '예약가능');
insert into seatcat values('R', 'R-5', 'V5', '예약가능');
insert into seatcat values('R', 'R-6', 'V6', '예약가능');
insert into seatcat values('R', 'R-7', 'V7', '예약가능');
insert into seatcat values('R', 'R-8', 'V8', '예약가능');
insert into seatcat values('R', 'R-9', 'V9', '예약가능');
insert into seatcat values('R', 'R-10', 'V10', '예약가능');
insert into seatcat values('S', 'S-1', 'V1', '예약가능');
insert into seatcat values('S', 'S-2', 'V2', '예약가능');
insert into seatcat values('S', 'S-3', 'V3', '예약가능');
insert into seatcat values('S', 'S-4', 'V4', '예약가능');
insert into seatcat values('S', 'S-5', 'V5', '예약가능');
insert into seatcat values('S', 'S-6', 'V6', '예약가능');
insert into seatcat values('S', 'S-7', 'V7', '예약가능');
insert into seatcat values('S', 'S-8', 'V8', '예약가능');
insert into seatcat values('S', 'S-9', 'V9', '예약가능');
insert into seatcat values('S', 'S-10', 'V10', '예약가능');

-- 피카츄의 대모험 좌석 테이블
create table seatpoketmon(
grade varchar2(20) not null,
seat varchar2(20) not null,
selectseat varchar2(20) not null,
checkreserve varchar2(30));

-- 피카츄의 대모험 좌석 추가
insert into seatpoketmon values('VIP', 'V-1', 'V1', '예약가능');
insert into seatpoketmon values('VIP', 'V-2', 'V2', '예약가능');
insert into seatpoketmon values('VIP', 'V-3', 'V3', '예약가능');
insert into seatpoketmon values('VIP', 'V-4', 'V4', '예약가능');
insert into seatpoketmon values('VIP', 'V-5', 'V5', '예약가능');
insert into seatpoketmon values('VIP', 'V-6', 'V6', '예약가능');
insert into seatpoketmon values('VIP', 'V-7', 'V7', '예약가능');
insert into seatpoketmon values('VIP', 'V-8', 'V8', '예약가능');
insert into seatpoketmon values('VIP', 'V-9', 'V9', '예약가능');
insert into seatpoketmon values('VIP', 'V-10', 'V10', '예약가능');
insert into seatpoketmon values('R', 'R-1', 'V1', '예약가능');
insert into seatpoketmon values('R', 'R-2', 'V2', '예약가능');
insert into seatpoketmon values('R', 'R-3', 'V3', '예약가능');
insert into seatpoketmon values('R', 'R-4', 'V4', '예약가능');
insert into seatpoketmon values('R', 'R-5', 'V5', '예약가능');
insert into seatpoketmon values('R', 'R-6', 'V6', '예약가능');
insert into seatpoketmon values('R', 'R-7', 'V7', '예약가능');
insert into seatpoketmon values('R', 'R-8', 'V8', '예약가능');
insert into seatpoketmon values('R', 'R-9', 'V9', '예약가능');
insert into seatpoketmon values('R', 'R-10', 'V10', '예약가능');
insert into seatpoketmon values('S', 'S-1', 'V1', '예약가능');
insert into seatpoketmon values('S', 'S-2', 'V2', '예약가능');
insert into seatpoketmon values('S', 'S-3', 'V3', '예약가능');
insert into seatpoketmon values('S', 'S-4', 'V4', '예약가능');
insert into seatpoketmon values('S', 'S-5', 'V5', '예약가능');
insert into seatpoketmon values('S', 'S-6', 'V6', '예약가능');
insert into seatpoketmon values('S', 'S-7', 'V7', '예약가능');
insert into seatpoketmon values('S', 'S-8', 'V8', '예약가능');
insert into seatpoketmon values('S', 'S-9', 'V9', '예약가능');
insert into seatpoketmon values('S', 'S-10', 'V10', '예약가능');


-- 낫아웃 좌석 테이블
create table seatnotout(
grade varchar2(20) not null,
seat varchar2(20) not null,
selectseat varchar2(20) not null,
checkreserve varchar2(30));

-- 낫아웃 좌석 추가
insert into seatnotout values('VIP', 'V-1', 'V1', '예약가능');
insert into seatnotout values('VIP', 'V-2', 'V2', '예약가능');
insert into seatnotout values('VIP', 'V-3', 'V3', '예약가능');
insert into seatnotout values('VIP', 'V-4', 'V4', '예약가능');
insert into seatnotout values('VIP', 'V-5', 'V5', '예약가능');
insert into seatnotout values('VIP', 'V-6', 'V6', '예약가능');
insert into seatnotout values('VIP', 'V-7', 'V7', '예약가능');
insert into seatnotout values('VIP', 'V-8', 'V8', '예약가능');
insert into seatnotout values('VIP', 'V-9', 'V9', '예약가능');
insert into seatnotout values('VIP', 'V-10', 'V10', '예약가능');
insert into seatnotout values('R', 'R-1', 'V1', '예약가능');
insert into seatnotout values('R', 'R-2', 'V2', '예약가능');
insert into seatnotout values('R', 'R-3', 'V3', '예약가능');
insert into seatnotout values('R', 'R-4', 'V4', '예약가능');
insert into seatnotout values('R', 'R-5', 'V5', '예약가능');
insert into seatnotout values('R', 'R-6', 'V6', '예약가능');
insert into seatnotout values('R', 'R-7', 'V7', '예약가능');
insert into seatnotout values('R', 'R-8', 'V8', '예약가능');
insert into seatnotout values('R', 'R-9', 'V9', '예약가능');
insert into seatnotout values('R', 'R-10', 'V10', '예약가능');
insert into seatnotout values('S', 'S-1', 'V1', '예약가능');
insert into seatnotout values('S', 'S-2', 'V2', '예약가능');
insert into seatnotout values('S', 'S-3', 'V3', '예약가능');
insert into seatnotout values('S', 'S-4', 'V4', '예약가능');
insert into seatnotout values('S', 'S-5', 'V5', '예약가능');
insert into seatnotout values('S', 'S-6', 'V6', '예약가능');
insert into seatnotout values('S', 'S-7', 'V7', '예약가능');
insert into seatnotout values('S', 'S-8', 'V8', '예약가능');
insert into seatnotout values('S', 'S-9', 'V9', '예약가능');
insert into seatnotout values('S', 'S-10', 'V10', '예약가능');

-- 행복 좌석 테이블
create table seathappy(
grade varchar2(20) not null,
seat varchar2(20) not null,
selectseat varchar2(20) not null,
checkreserve varchar2(30));

-- 행복 좌석 추가
insert into seathappy values('VIP', 'V-1', 'V1', '예약가능');
insert into seathappy values('VIP', 'V-2', 'V2', '예약가능');
insert into seathappy values('VIP', 'V-3', 'V3', '예약가능');
insert into seathappy values('VIP', 'V-4', 'V4', '예약가능');
insert into seathappy values('VIP', 'V-5', 'V5', '예약가능');
insert into seathappy values('VIP', 'V-6', 'V6', '예약가능');
insert into seathappy values('VIP', 'V-7', 'V7', '예약가능');
insert into seathappy values('VIP', 'V-8', 'V8', '예약가능');
insert into seathappy values('VIP', 'V-9', 'V9', '예약가능');
insert into seathappy values('VIP', 'V-10', 'V10', '예약가능');
insert into seathappy values('R', 'R-1', 'V1', '예약가능');
insert into seathappy values('R', 'R-2', 'V2', '예약가능');
insert into seathappy values('R', 'R-3', 'V3', '예약가능');
insert into seathappy values('R', 'R-4', 'V4', '예약가능');
insert into seathappy values('R', 'R-5', 'V5', '예약가능');
insert into seathappy values('R', 'R-6', 'V6', '예약가능');
insert into seathappy values('R', 'R-7', 'V7', '예약가능');
insert into seathappy values('R', 'R-8', 'V8', '예약가능');
insert into seathappy values('R', 'R-9', 'V9', '예약가능');
insert into seathappy values('R', 'R-10', 'V10', '예약가능');
insert into seathappy values('S', 'S-1', 'V1', '예약가능');
insert into seathappy values('S', 'S-2', 'V2', '예약가능');
insert into seathappy values('S', 'S-3', 'V3', '예약가능');
insert into seathappy values('S', 'S-4', 'V4', '예약가능');
insert into seathappy values('S', 'S-5', 'V5', '예약가능');
insert into seathappy values('S', 'S-6', 'V6', '예약가능');
insert into seathappy values('S', 'S-7', 'V7', '예약가능');
insert into seathappy values('S', 'S-8', 'V8', '예약가능');
insert into seathappy values('S', 'S-9', 'V9', '예약가능');
insert into seathappy values('S', 'S-10', 'V10', '예약가능');

-- 회원가입쿼리문
insert into member values(?,?,?,?);

-- 로그인 쿼리문(아이디, 비밀번호 일치 시 이름 출력)
select name from member where member_id = ? and member_pw = ?;

-- 공연 정보 전체 조회 쿼리문
select * from play;

-- 뮤지컬 더 리퍼 좌석 조회 쿼리문
select * from seatripper;

-- 옥탑방 고양이 좌석 조회 뭐리문
select * from seatcat;

-- 피카츄의 대모험 좌석 조회 쿼리문
select * from seatpoketmon;

-- 낫아웃 좌석 조회 쿼리문
select * from seatnotout;

-- 행복 좌석 조회 쿼리문
select * from seathappy;

-- 뮤지컬 더 리퍼 좌석 선택 쿼리문
select seat from seatripper where selectseat = ?;

-- 옥탑방 고양이 좌석 선택 쿼리문
select seat from seatcat where selectseat = ?;

-- 피카츄의 대모험 좌석 선택 쿼리문
select seat from seatpoketmon where selectseat = ?;

-- 낫아웃 좌석 선택 쿼리문
select seat from seatnotout where selectseat = ?;

-- 행복 좌석 선택 쿼리문
select seat from seathappy where selectseat = ?;

-- 뮤지컬 더 리퍼 예약 쿼리문
update seatripper set checkreserve = '예약불가!!' where selectseat = ?;

-- 옥탑방 고양이 예약 쿼리문
update seatcat set checkreserve = '예약불가!!' where selectseat = ?;

-- 피카츄의 대모험 예약 쿼리문
update seatpoketmon set checkreserve = '예약불가!!' where selectseat = ?;

-- 낫아웃 예약 쿼리문
update seatnotout set checkreserve = '예약불가!!' where selectseat = ?;

-- 행복 예약 쿼리문
update seathappy set checkreserve = '예약불가!!' where selectseat = ?;

-- 뮤지컬 더 리퍼 예약취소 쿼리문
update seatripper set checkreserve = '예약가능' where selectseat = ?;

-- 옥탑방 고양이 예약취소 쿼리문
update seatcat set checkreserve = '예약가능' where selectseat = ?;

-- 피카츄의 대모험 예약취소 쿼리문
update seatpoketmon set checkreserve = '예약가능' where selectseat = ?;

-- 낫아웃 예약취소 쿼리문
update seatnotout set checkreserve = '예약가능' where selectseat = ?;

-- 행복 예약취소 쿼리문
update seathappy set checkreserve = '예약가능' where selectseat = ?;