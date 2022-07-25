-- MEMBER
create table member(
mnum number,
mid varchar2(24),
mpwd varchar2(24) not null,
mname varchar2(20) not null,
mjubun varchar2(14),
memail varchar2(50),
mphone varchar2(24) not null,
madr varchar2(100) not null,
mdate date not null,
wrongcnt number,
idlock varchar2(10) constraint member_idlock_ck check (idlock in ('lock','unlock')),
constraint member_mnum_pk primary key(mnum),
constraint member_mid_uq unique(mid),
constraint member_mjubun_uq unique(mjubun),
constraint member_memail_uq unique(memail));

-- MEMBER_SEQ
create sequence member_seq
increment by 1 start with 6;

-- BOARD
create table board(
bnum number,
bsub varchar2(100) not null,
bwriter varchar2(24) not null,
bcont clob not null,
bdate date not null,
bimg varchar2(100),
constraint board_bnum_pk primary key(bnum),
constraint board_bwriter_fk foreign key(bwriter)
references member(mid) on delete cascade);

alter table board add category varchar2(50);
alter table board add constraint board_category_ck check(category in('해외','국내'));

alter table board add cview number;

-- BOARD_SEQ
create sequence board_seq
increment by 1 start with 1;
-- QNABOARD
create table qnaboard(
inum number,
iwriter varchar2(24) not null,
isub varchar2(50) not null,
icont clob not null,
idate date not null,
iadmincom clob,
istate varchar2(20),
constraint qnaboard_inum_pk primary key(inum),
constraint qnaboard_iwriter_fk foreign key(iwriter)
references member(mid) on delete cascade);

-- QNABOARD_SEQ
create sequence qnaboard_seq
increment by 1 start with 1;

-- ADMIN
create table admin(
anum number,
aid varchar2(24),
apwd varchar2(24) not null,
agrade varchar2(24) not null,
constraint admin_anum_pk primary key(anum),
constraint admin_aid_uq unique(aid),
constraint admin_agrade_ck check(agrade in('A관리자','B관리자','C관리자','D관리자'))
);

-- ADMIN_SEQ
create sequence admin_seq
increment by 1 start with 1;

-- LOGINOUTLOG
create table loginoutlog(
lnum number,
lid varchar2(24),
lip varchar2(30),
lstatus varchar2(10),
ltime date,
constraint loginoutlog_lnum_pk primary key(lnum),
constraint loginoutlog_lstatus_ck check(lstatus in('login','logout'))
);
-- LOGINOUTLOG_Seq
create sequence loginoutlog_seq
increment by 1 start with 1;

--TOURLIST
create table tourlist(
num number CONSTRAINT TOURLIST_NUM_PK PRIMARY key,
title varchar2(50),
region varchar2(20),
content varchar2(500),
tourdate number,
imga varchar2(40),
imgb varchar2(40),
imgc varchar2(40),
createdate date,
updatedate date
);

create sequence tourlist_seq INCREMENT BY 1 start with 1;

--BOOKING
create table booking(
num number CONSTRAINT BOOKING_NUM_PK PRIMARY key,
tournum number,
personchk varchar2(10) CONSTRAINT BOOKING_PERSONCHK_CK CHECK (personchk in ('성인','아동')),
jumin number(20) constraint BOOKING_JUMIN_UQ unique,
phone number(20),
email varchar2(30),
engfirst varchar2(20),
englast varchar2(10),
booker varchar2(30),
name varchar2(30),
booknum number,
CONSTRAINT BOOKING_TOURNUM_FK FOREIGN KEY (tournum) REFERENCES tourlist(num) on DELETE CASCADE, 
CONSTRAINT BOOKING_BOOKER_FK FOREIGN KEY (booker) REFERENCES member(mid)
);

create sequence booking_seq INCREMENT BY 1 start with 100000;

--AFTERTOUR
create table aftertour(
num number CONSTRAINT AFTERTOUR_NUM_PK PRIMARY key,
tournum number,
booknum number,
title varchar2(50),
content varchar2(300),
booker varchar2(30),
imgn varchar2(40),
stars number(1) CONSTRAINT AFTERTOUR_STARS_CK CHECK (stars <= 5)
);

create sequence aftertour_seq INCREMENT BY 1 start with 1;

--CONTACT
create table contact(
num number CONSTRAINT contact_num_pk primary key,
sender varchar2(30),
receiver varchar2(30),
msg varchar2(300),
status number(2),
createdate date
);
create sequence contact_seq INCREMENT BY 1 START WITH 1;