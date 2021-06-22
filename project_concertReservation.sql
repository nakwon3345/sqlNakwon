-- ��� ���̺� ����(member_id, mobile �ߺ� �Ұ�)
create table member(
member_id varchar2(30) not null,
member_pw varchar2(30) not null,
name varchar(20) not null,
mobile varchar2(30) not null,
constraint member_member_id_pk primary key(member_id),
constraint member_member_id_uk unique(member_id, mobile));

-- ���� ���� ���̺� ����
create table play(
playcode number(38) not null,
name varchar2(40) not null,
shcedule date not null,
time varchar2(30) not null,
actor varchar2(20) not null,
constraint play_playcode_pk primary key(playcode),);

-- ���� ���� �߰�
insert into play values (1, '������ �� ����', to_date('21/06/12','yy/mm/dd'), '19:30~22:00','��ä��');
insert into play values (2, '��ž�� �����', to_date('21/06/19','yy/mm/dd'), '20:00~22:00','������');
insert into play values (3, '��ī���� �����', to_date('21/06/26','yy/mm/dd'), '19:30~21:00','�ҴϾ�');
insert into play values (4, '���ƿ�', to_date('21/07/03','yy/mm/dd'), '20:00~22:30','������');
insert into play values (5, '�ູ', to_date('21/07/10','yy/mm/dd'), '19:30~21:30','�����');

-- ������ �� ���� �¼� ���̺�
create table seatripper(
grade varchar2(20) not null,
seat varchar2(20) not null,
selectseat varchar2(20) not null,
checkreserve varchar2(30));

-- ������ �� ���� �¼� �߰�
insert into seatripper values('VIP', 'V-1', 'V1', '���డ��');
insert into seatripper values('VIP', 'V-2', 'V2', '���డ��');
insert into seatripper values('VIP', 'V-3', 'V3', '���డ��');
insert into seatripper values('VIP', 'V-4', 'V4', '���డ��');
insert into seatripper values('VIP', 'V-5', 'V5', '���డ��');
insert into seatripper values('VIP', 'V-6', 'V6', '���డ��');
insert into seatripper values('VIP', 'V-7', 'V7', '���డ��');
insert into seatripper values('VIP', 'V-8', 'V8', '���డ��');
insert into seatripper values('VIP', 'V-9', 'V9', '���డ��');
insert into seatripper values('VIP', 'V-10', 'V10', '���డ��');
insert into seatripper values('R', 'R-1', 'V1', '���డ��');
insert into seatripper values('R', 'R-2', 'V2', '���డ��');
insert into seatripper values('R', 'R-3', 'V3', '���డ��');
insert into seatripper values('R', 'R-4', 'V4', '���డ��');
insert into seatripper values('R', 'R-5', 'V5', '���డ��');
insert into seatripper values('R', 'R-6', 'V6', '���డ��');
insert into seatripper values('R', 'R-7', 'V7', '���డ��');
insert into seatripper values('R', 'R-8', 'V8', '���డ��');
insert into seatripper values('R', 'R-9', 'V9', '���డ��');
insert into seatripper values('R', 'R-10', 'V10', '���డ��');
insert into seatripper values('S', 'S-1', 'V1', '���డ��');
insert into seatripper values('S', 'S-2', 'V2', '���డ��');
insert into seatripper values('S', 'S-3', 'V3', '���డ��');
insert into seatripper values('S', 'S-4', 'V4', '���డ��');
insert into seatripper values('S', 'S-5', 'V5', '���డ��');
insert into seatripper values('S', 'S-6', 'V6', '���డ��');
insert into seatripper values('S', 'S-7', 'V7', '���డ��');
insert into seatripper values('S', 'S-8', 'V8', '���డ��');
insert into seatripper values('S', 'S-9', 'V9', '���డ��');
insert into seatripper values('S', 'S-10', 'V10', '���డ��');

-- ��ž�� ����� �¼� ���̺�
create table seatcat(
grade varchar2(20) not null,
seat varchar2(20) not null,
selectseat varchar2(20) not null,
checkreserve varchar2(30));

-- ��ž�� ����� �¼� �߰�
insert into seatcat values('VIP', 'V-1', 'V1', '���డ��');
insert into seatcat values('VIP', 'V-2', 'V2', '���డ��');
insert into seatcat values('VIP', 'V-3', 'V3', '���డ��');
insert into seatcat values('VIP', 'V-4', 'V4', '���డ��');
insert into seatcat values('VIP', 'V-5', 'V5', '���డ��');
insert into seatcat values('VIP', 'V-6', 'V6', '���డ��');
insert into seatcat values('VIP', 'V-7', 'V7', '���డ��');
insert into seatcat values('VIP', 'V-8', 'V8', '���డ��');
insert into seatcat values('VIP', 'V-9', 'V9', '���డ��');
insert into seatcat values('VIP', 'V-10', 'V10', '���డ��');
insert into seatcat values('R', 'R-1', 'V1', '���డ��');
insert into seatcat values('R', 'R-2', 'V2', '���డ��');
insert into seatcat values('R', 'R-3', 'V3', '���డ��');
insert into seatcat values('R', 'R-4', 'V4', '���డ��');
insert into seatcat values('R', 'R-5', 'V5', '���డ��');
insert into seatcat values('R', 'R-6', 'V6', '���డ��');
insert into seatcat values('R', 'R-7', 'V7', '���డ��');
insert into seatcat values('R', 'R-8', 'V8', '���డ��');
insert into seatcat values('R', 'R-9', 'V9', '���డ��');
insert into seatcat values('R', 'R-10', 'V10', '���డ��');
insert into seatcat values('S', 'S-1', 'V1', '���డ��');
insert into seatcat values('S', 'S-2', 'V2', '���డ��');
insert into seatcat values('S', 'S-3', 'V3', '���డ��');
insert into seatcat values('S', 'S-4', 'V4', '���డ��');
insert into seatcat values('S', 'S-5', 'V5', '���డ��');
insert into seatcat values('S', 'S-6', 'V6', '���డ��');
insert into seatcat values('S', 'S-7', 'V7', '���డ��');
insert into seatcat values('S', 'S-8', 'V8', '���డ��');
insert into seatcat values('S', 'S-9', 'V9', '���డ��');
insert into seatcat values('S', 'S-10', 'V10', '���డ��');

-- ��ī���� ����� �¼� ���̺�
create table seatpoketmon(
grade varchar2(20) not null,
seat varchar2(20) not null,
selectseat varchar2(20) not null,
checkreserve varchar2(30));

-- ��ī���� ����� �¼� �߰�
insert into seatpoketmon values('VIP', 'V-1', 'V1', '���డ��');
insert into seatpoketmon values('VIP', 'V-2', 'V2', '���డ��');
insert into seatpoketmon values('VIP', 'V-3', 'V3', '���డ��');
insert into seatpoketmon values('VIP', 'V-4', 'V4', '���డ��');
insert into seatpoketmon values('VIP', 'V-5', 'V5', '���డ��');
insert into seatpoketmon values('VIP', 'V-6', 'V6', '���డ��');
insert into seatpoketmon values('VIP', 'V-7', 'V7', '���డ��');
insert into seatpoketmon values('VIP', 'V-8', 'V8', '���డ��');
insert into seatpoketmon values('VIP', 'V-9', 'V9', '���డ��');
insert into seatpoketmon values('VIP', 'V-10', 'V10', '���డ��');
insert into seatpoketmon values('R', 'R-1', 'V1', '���డ��');
insert into seatpoketmon values('R', 'R-2', 'V2', '���డ��');
insert into seatpoketmon values('R', 'R-3', 'V3', '���డ��');
insert into seatpoketmon values('R', 'R-4', 'V4', '���డ��');
insert into seatpoketmon values('R', 'R-5', 'V5', '���డ��');
insert into seatpoketmon values('R', 'R-6', 'V6', '���డ��');
insert into seatpoketmon values('R', 'R-7', 'V7', '���డ��');
insert into seatpoketmon values('R', 'R-8', 'V8', '���డ��');
insert into seatpoketmon values('R', 'R-9', 'V9', '���డ��');
insert into seatpoketmon values('R', 'R-10', 'V10', '���డ��');
insert into seatpoketmon values('S', 'S-1', 'V1', '���డ��');
insert into seatpoketmon values('S', 'S-2', 'V2', '���డ��');
insert into seatpoketmon values('S', 'S-3', 'V3', '���డ��');
insert into seatpoketmon values('S', 'S-4', 'V4', '���డ��');
insert into seatpoketmon values('S', 'S-5', 'V5', '���డ��');
insert into seatpoketmon values('S', 'S-6', 'V6', '���డ��');
insert into seatpoketmon values('S', 'S-7', 'V7', '���డ��');
insert into seatpoketmon values('S', 'S-8', 'V8', '���డ��');
insert into seatpoketmon values('S', 'S-9', 'V9', '���డ��');
insert into seatpoketmon values('S', 'S-10', 'V10', '���డ��');


-- ���ƿ� �¼� ���̺�
create table seatnotout(
grade varchar2(20) not null,
seat varchar2(20) not null,
selectseat varchar2(20) not null,
checkreserve varchar2(30));

-- ���ƿ� �¼� �߰�
insert into seatnotout values('VIP', 'V-1', 'V1', '���డ��');
insert into seatnotout values('VIP', 'V-2', 'V2', '���డ��');
insert into seatnotout values('VIP', 'V-3', 'V3', '���డ��');
insert into seatnotout values('VIP', 'V-4', 'V4', '���డ��');
insert into seatnotout values('VIP', 'V-5', 'V5', '���డ��');
insert into seatnotout values('VIP', 'V-6', 'V6', '���డ��');
insert into seatnotout values('VIP', 'V-7', 'V7', '���డ��');
insert into seatnotout values('VIP', 'V-8', 'V8', '���డ��');
insert into seatnotout values('VIP', 'V-9', 'V9', '���డ��');
insert into seatnotout values('VIP', 'V-10', 'V10', '���డ��');
insert into seatnotout values('R', 'R-1', 'V1', '���డ��');
insert into seatnotout values('R', 'R-2', 'V2', '���డ��');
insert into seatnotout values('R', 'R-3', 'V3', '���డ��');
insert into seatnotout values('R', 'R-4', 'V4', '���డ��');
insert into seatnotout values('R', 'R-5', 'V5', '���డ��');
insert into seatnotout values('R', 'R-6', 'V6', '���డ��');
insert into seatnotout values('R', 'R-7', 'V7', '���డ��');
insert into seatnotout values('R', 'R-8', 'V8', '���డ��');
insert into seatnotout values('R', 'R-9', 'V9', '���డ��');
insert into seatnotout values('R', 'R-10', 'V10', '���డ��');
insert into seatnotout values('S', 'S-1', 'V1', '���డ��');
insert into seatnotout values('S', 'S-2', 'V2', '���డ��');
insert into seatnotout values('S', 'S-3', 'V3', '���డ��');
insert into seatnotout values('S', 'S-4', 'V4', '���డ��');
insert into seatnotout values('S', 'S-5', 'V5', '���డ��');
insert into seatnotout values('S', 'S-6', 'V6', '���డ��');
insert into seatnotout values('S', 'S-7', 'V7', '���డ��');
insert into seatnotout values('S', 'S-8', 'V8', '���డ��');
insert into seatnotout values('S', 'S-9', 'V9', '���డ��');
insert into seatnotout values('S', 'S-10', 'V10', '���డ��');

-- �ູ �¼� ���̺�
create table seathappy(
grade varchar2(20) not null,
seat varchar2(20) not null,
selectseat varchar2(20) not null,
checkreserve varchar2(30));

-- �ູ �¼� �߰�
insert into seathappy values('VIP', 'V-1', 'V1', '���డ��');
insert into seathappy values('VIP', 'V-2', 'V2', '���డ��');
insert into seathappy values('VIP', 'V-3', 'V3', '���డ��');
insert into seathappy values('VIP', 'V-4', 'V4', '���డ��');
insert into seathappy values('VIP', 'V-5', 'V5', '���డ��');
insert into seathappy values('VIP', 'V-6', 'V6', '���డ��');
insert into seathappy values('VIP', 'V-7', 'V7', '���డ��');
insert into seathappy values('VIP', 'V-8', 'V8', '���డ��');
insert into seathappy values('VIP', 'V-9', 'V9', '���డ��');
insert into seathappy values('VIP', 'V-10', 'V10', '���డ��');
insert into seathappy values('R', 'R-1', 'V1', '���డ��');
insert into seathappy values('R', 'R-2', 'V2', '���డ��');
insert into seathappy values('R', 'R-3', 'V3', '���డ��');
insert into seathappy values('R', 'R-4', 'V4', '���డ��');
insert into seathappy values('R', 'R-5', 'V5', '���డ��');
insert into seathappy values('R', 'R-6', 'V6', '���డ��');
insert into seathappy values('R', 'R-7', 'V7', '���డ��');
insert into seathappy values('R', 'R-8', 'V8', '���డ��');
insert into seathappy values('R', 'R-9', 'V9', '���డ��');
insert into seathappy values('R', 'R-10', 'V10', '���డ��');
insert into seathappy values('S', 'S-1', 'V1', '���డ��');
insert into seathappy values('S', 'S-2', 'V2', '���డ��');
insert into seathappy values('S', 'S-3', 'V3', '���డ��');
insert into seathappy values('S', 'S-4', 'V4', '���డ��');
insert into seathappy values('S', 'S-5', 'V5', '���డ��');
insert into seathappy values('S', 'S-6', 'V6', '���డ��');
insert into seathappy values('S', 'S-7', 'V7', '���డ��');
insert into seathappy values('S', 'S-8', 'V8', '���డ��');
insert into seathappy values('S', 'S-9', 'V9', '���డ��');
insert into seathappy values('S', 'S-10', 'V10', '���డ��');

-- ȸ������������
insert into member values(?,?,?,?);

-- �α��� ������(���̵�, ��й�ȣ ��ġ �� �̸� ���)
select name from member where member_id = ? and member_pw = ?;

-- ���� ���� ��ü ��ȸ ������
select * from play;

-- ������ �� ���� �¼� ��ȸ ������
select * from seatripper;

-- ��ž�� ����� �¼� ��ȸ ������
select * from seatcat;

-- ��ī���� ����� �¼� ��ȸ ������
select * from seatpoketmon;

-- ���ƿ� �¼� ��ȸ ������
select * from seatnotout;

-- �ູ �¼� ��ȸ ������
select * from seathappy;

-- ������ �� ���� �¼� ���� ������
select seat from seatripper where selectseat = ?;

-- ��ž�� ����� �¼� ���� ������
select seat from seatcat where selectseat = ?;

-- ��ī���� ����� �¼� ���� ������
select seat from seatpoketmon where selectseat = ?;

-- ���ƿ� �¼� ���� ������
select seat from seatnotout where selectseat = ?;

-- �ູ �¼� ���� ������
select seat from seathappy where selectseat = ?;

-- ������ �� ���� ���� ������
update seatripper set checkreserve = '����Ұ�!!' where selectseat = ?;

-- ��ž�� ����� ���� ������
update seatcat set checkreserve = '����Ұ�!!' where selectseat = ?;

-- ��ī���� ����� ���� ������
update seatpoketmon set checkreserve = '����Ұ�!!' where selectseat = ?;

-- ���ƿ� ���� ������
update seatnotout set checkreserve = '����Ұ�!!' where selectseat = ?;

-- �ູ ���� ������
update seathappy set checkreserve = '����Ұ�!!' where selectseat = ?;

-- ������ �� ���� ������� ������
update seatripper set checkreserve = '���డ��' where selectseat = ?;

-- ��ž�� ����� ������� ������
update seatcat set checkreserve = '���డ��' where selectseat = ?;

-- ��ī���� ����� ������� ������
update seatpoketmon set checkreserve = '���డ��' where selectseat = ?;

-- ���ƿ� ������� ������
update seatnotout set checkreserve = '���డ��' where selectseat = ?;

-- �ູ ������� ������
update seathappy set checkreserve = '���డ��' where selectseat = ?;