select * from member;

create table theater(theater_id number(6) not null, 
total_seat number(10),
CONSTRAINT
theater_theater_id_pk PRIMARY key(theater_id));


create table seat (theater_id number(6) not null, seat_id varchar2(20) not null,
issue number(6) not null,
constraint seat_pk primary key(seat_id, theater_id),
constraint seat_theater_id_fk foreign key(theater_id) references theater(theater_id));

create table concert(play_id number(6) not null, title varchar2(20),
constraint play_play_id_pk primary key(play_id));
select * from tab;

create table schedule(schedule_id number(6) not null, 
schedule_date date, 
play_id number(4),
theater_id number(4),
constraint schedule_schedule_id_pk primary key(schedule_id),
constraint schedule_play_id_fk foreign key(play_id) references concert(play_id),
constraint schedule_theater_id_fk foreign key(theater_id) references theater(theater_id));

create table ticket(ticket_id number(6) not null,
schedule_id number(2),
theater_id number(4),
seat_id varchar2(10),
constraint ticket_ticket_id_pk primary key(ticket_id),
constraint ticket_schedule_id_fk foreign key(schedule_id) references schedule(schedule_id),
constraint ticket_seat_fk foreign key(ticket_id, seat_id) references seat(theater_id, seat_id));

select * from reservation;
create table reservation(
reservation_id number(6) not null,
ticket1_id number(6),
ticket2_id number(6),
ticket3_id number(6),
ticket4_id number(6),
ticket5_id number(6),
constraint reservation_reservation_id_pk primary key(reservation_id),
constraint reservation_ticket1_id_fk foreign key(ticket1_id) references ticket(ticket_id),
constraint reservation_ticket2_id_fk foreign key(ticket2_id) references ticket(ticket_id),
constraint reservation_ticket3_id_fk foreign key(ticket3_id) references ticket(ticket_id),
constraint reservation_ticket4_id_fk foreign key(ticket4_id) references ticket(ticket_id),
constraint reservation_ticket5_id_fk foreign key(ticket5_id) references ticket(ticket_id));

insert into concert values(1, '¹ÂÁöÄÃ ´õ ¸®ÆÛ');
insert into concert values(2, '¿ÁÅ¾¹æ °í¾çÀÌ');
insert into concert values(3, 'poketmon');
insert into concert values(4, '³´¾Æ¿ô');
insert into concert values(5, 'Çàº¹');

insert into theater values(1, 59);
insert into theater values(2, 59);
insert into theater values(3, 59);
insert into theater values(4, 59);
insert into theater values(5, 59);

select * from seat;
insert into seat values(1, 'V-1', 0);
insert into seat values(1, 'V-2', 0);
insert into seat values(1, 'V-3', 0);
insert into seat values(1, 'V-4', 0);
insert into seat values(1, 'V-5', 0);
insert into seat values(1, 'V-6', 0);
insert into seat values(1, 'V-7', 0);
insert into seat values(1, 'V-8', 0);
insert into seat values(1, 'V-9', 0);
insert into seat values(1, 'V-10', 0);
commit;

insert into seat values(1, 'S-1', 0);
insert into seat values(1, 'S-2', 0);
insert into seat values(1, 'S-3', 0);
insert into seat values(1, 'S-4', 0);
insert into seat values(1, 'S-5', 0);
insert into seat values(1, 'S-6', 0);
insert into seat values(1, 'S-7', 0);
insert into seat values(1, 'S-8', 0);
insert into seat values(1, 'S-9', 0);
insert into seat values(1, 'S-10', 0);

insert into seat values(1, 'R-1', 0);
insert into seat values(1, 'R-2', 0);
insert into seat values(1, 'R-3', 0);
insert into seat values(1, 'R-4', 0);
insert into seat values(1, 'R-5', 0);
insert into seat values(1, 'R-6', 0);
insert into seat values(1, 'R-7', 0);
insert into seat values(1, 'R-8', 0);
insert into seat values(1, 'R-9', 0);
insert into seat values(1, 'R-10', 0);

select * from schedule;
insert into schedule values(1, to_date(20210612, 'yyyy-mm-dd'),1,1);
insert into schedule values(2, to_date(20210619, 'yyyy-mm-dd'),2,2);
insert into schedule values(3, to_date(20210626, 'yyyy-mm-dd'),3,3);
insert into schedule values(4, to_date(20210703, 'yyyy-mm-dd'),4,4);
insert into schedule values(5, to_date(20210710, 'yyyy-mm-dd'),5,5);

create sequence customer_id;
create sequence ticket_id;
create sequence reservation_id;

select schedule_id, seat.theater_id, seat_id from schedule, seat 
where schedule.theater_id = seat.theater_id;
select * from play;
select * from concert;
select * from tab;
select * from member;
select * from member where member_id = member_id;
select name from member where member_id = 'user01' and member_pw = 'password01';
insert into member values('test01', '1234', 'kim', '01012341234');
delete from member where member_id = 'test70';
select * from seat;

create table seatripper(
grade varchar2(10) not null,
seat1 varchar2(10),
seat2 varchar2(10),
seat3 varchar2(10),
seat4 varchar2(10),
seat5 varchar2(10),
seat6 varchar2(10),
seat7 varchar2(10),
seat8 varchar2(10),
seat9 varchar2(10),
seat10 varchar2(10));

create table seatcat(
grade varchar2(10) not null,
seat1 varchar2(10),
seat2 varchar2(10),
seat3 varchar2(10),
seat4 varchar2(10),
seat5 varchar2(10),
seat6 varchar2(10),
seat7 varchar2(10),
seat8 varchar2(10),
seat9 varchar2(10),
seat10 varchar2(10));

create table seatpoketmon(
grade varchar2(10) not null,
seat1 varchar2(10),
seat2 varchar2(10),
seat3 varchar2(10),
seat4 varchar2(10),
seat5 varchar2(10),
seat6 varchar2(10),
seat7 varchar2(10),
seat8 varchar2(10),
seat9 varchar2(10),
seat10 varchar2(10));

create table seatnotout(
grade varchar2(10) not null,
seat1 varchar2(10),
seat2 varchar2(10),
seat3 varchar2(10),
seat4 varchar2(10),
seat5 varchar2(10),
seat6 varchar2(10),
seat7 varchar2(10),
seat8 varchar2(10),
seat9 varchar2(10),
seat10 varchar2(10));

create table seathappy(
grade varchar2(10) not null,
seat1 varchar2(10),
seat2 varchar2(10),
seat3 varchar2(10),
seat4 varchar2(10),
seat5 varchar2(10),
seat6 varchar2(10),
seat7 varchar2(10),
seat8 varchar2(10),
seat9 varchar2(10),
seat10 varchar2(10));

insert into seatripper values ('VIP', '1', '2', '3', '4','5','6','7','8','9','10');
insert into seatripper values ('S', '1', '2', '3', '4','5','6','7','8','9','10');
insert into seatripper values ('R', '1', '2', '3', '4','5','6','7','8','9','10');

insert into seatcat values ('VIP', '1', '2', '3', '4','5','6','7','8','9','10');
insert into seatcat values ('S', '1', '2', '3', '4','5','6','7','8','9','10');
insert into seatcat values ('R', '1', '2', '3', '4','5','6','7','8','9','10');

insert into seatpoketmon values ('VIP', '1', '2', '3', '4','5','6','7','8','9','10');
insert into seatpoketmon values ('S', '1', '2', '3', '4','5','6','7','8','9','10');
insert into seatpoketmon values ('R', '1', '2', '3', '4','5','6','7','8','9','10');

insert into seatnotout values ('VIP', '1', '2', '3', '4','5','6','7','8','9','10');
insert into seatnotout values ('S', '1', '2', '3', '4','5','6','7','8','9','10');
insert into seatnotout values ('R', '1', '2', '3', '4','5','6','7','8','9','10');

insert into seathappy values ('VIP', '1', '2', '3', '4','5','6','7','8','9','10');
insert into seathappy values ('S', '1', '2', '3', '4','5','6','7','8','9','10');
insert into seathappy values ('R', '1', '2', '3', '4','5','6','7','8','9','10');

commit;

select * from seatripper;
select * from play;
select seat1 from seatripper where grade = 'S';
select * from play where name like ?;

create table customer(
customer_UID number(6) not null,
customer_id varchar2(30),
customer_pw varchar2(30),
customer_name varchar2(20),
cutomer_tel number(12),
constraint customer_customer_UID_pk primary key(customer_UID));

create table theater(
theater_UID number(6) not null,
total_seat_number number(10),
constraint theater_theater_UID_pk primary key(theater_UID));

CREATE TABLE seat ( theater_UID number(4) NOT NULL, seat_UID varchar2(10) NOT NULL, issue NUMBER(6) default 0 not null , 
CONSTRAINT seat_pk PRIMARY KEY(seat_UID, theater_UID), constraint seat_theater_UID_fk foreign key(theater_UID) references theater(theater_UID) ); 
CREATE TABLE ticket ( ticket_UID NUMBER(6) NOT NULL, schedule_UID NUMBER(2), theater_UID NUMBER(4), seat_UID varchar2(10), price number(6), CONSTRAINT ticket_ticket_UID_pk PRIMARY KEY(ticket_UID), CONSTRAINT ticket_schedule_UID_fk FOREIGN KEY(schedule_UID) REFERENCES schedule(schedule_UID), constraint ticket_seat_fk foreign key(theater_UID, seat_UID) references seat(theater_UID, seat_UID) );
CREATE TABLE movie ( movie_UID NUMBER(6) NOT NULL, title VARCHAR2(20), CONSTRAINT movie_movie_UID_pk PRIMARY KEY(movie_UID) );

CREATE TABLE schedule ( schedule_UID NUMBER(6) NOT NULL, schedule_date DATE, movie_UID NUMBER(4), theater_UID NUMBER(4), CONSTRAINT schedule_schedule_UID_pk PRIMARY KEY(schedule_UID), CONSTRAINT schedule_movie_UID_fk FOREIGN KEY(movie_UID) REFERENCES movie(movie_UID), CONSTRAINT schedule_theater_UID_fk FOREIGN KEY(theater_UID) REFERENCES theater(theater_UID) );

create table reservation( reservation_UID number(6) not null, ticket1_uid number(6), ticket2_uid number(6), ticket3_uid number(6), ticket4_uid number(7), ticket5_uid number(7), constraint reservation_reservation_UID_pk primary key(reservation_UID), constraint reservation_ticket1_uid_fk foreign key(ticket1_uid) references ticket(ticket_uid), constraint reservation_ticket2_uid_fk foreign key(ticket2_uid) references ticket(ticket_uid), constraint reservation_ticket3_uid_fk foreign key(ticket3_uid) references ticket(ticket_uid), constraint reservation_ticket4_uid_fk foreign key(ticket4_uid) references ticket(ticket_uid) ); 

insert into movie values(1, '¹ÂÁöÄÃ ´õ ¸®ÆÛ'); 
insert into movie values(2, '¿ÁÅ¾¹æ °í¾çÀÌ'); 
insert into movie values(3, 'poketmon');
insert into movie values(4, '³´¾Æ¿ô');
insert into movie values(5, 'Çàº¹');

insert into theater values(1, 69); 
insert into theater values(2, 69); 
insert into theater values(3, 69);

insert into seat values(1, 'VIP-1', 0);
insert into seat values(1, 'VIP-2', 0);
insert into seat values(1, 'VIP-3', 0);
insert into seat values(1, 'VIP-4', 0);
insert into seat values(1, 'VIP-5', 0);
insert into seat values(1, 'VIP-6', 0);
insert into seat values(1, 'VIP-7', 0);
insert into seat values(1, 'VIP-8', 0);
insert into seat values(1, 'VIP-9', 0);
insert into seat values(1, 'VIP-10', 0);

insert into seat values(1, 'S-1', 0);
insert into seat values(1, 'S-2', 0);
insert into seat values(1, 'S-3', 0);
insert into seat values(1, 'S-4', 0);
insert into seat values(1, 'S-5', 0);
insert into seat values(1, 'S-6', 0);
insert into seat values(1, 'S-7', 0);
insert into seat values(1, 'S-8', 0);
insert into seat values(1, 'S-9', 0);
insert into seat values(1, 'S-10', 0);

insert into seat values(1, 'R-1', 0);
insert into seat values(1, 'R-2', 0);
insert into seat values(1, 'R-3', 0);
insert into seat values(1, 'R-4', 0);
insert into seat values(1, 'R-5', 0);
insert into seat values(1, 'R-6', 0);
insert into seat values(1, 'R-7', 0);
insert into seat values(1, 'R-8', 0);
insert into seat values(1, 'R-9', 0);
insert into seat values(1, 'R-10', 0);

select * from seatPoketmon;