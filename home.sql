select * from myhome;

create table myhome(
    bno number,
    writer varchar2(50) not null,
    title varchar2(50) not null,
    content varchar2(1000) not null,
    thumb_img varchar2(200),
    regdate date default sysdate,
    updatedate date,
    like_cnt number(10,0) default 0,
    view_cnt number default 0,
    scrap_cnt number default 0,
    homeForm VARCHAR2(30),
    money VARCHAR2(30),
    homeSize VARCHAR2(30),
    place VARCHAR2(30),
    direction VARCHAR2(30),
    room VARCHAR2(30),
    age VARCHAR2(30),
    family VARCHAR2(30),
    worker VARCHAR2(30),
    region VARCHAR2(30),
    img1 varchar2(300),
    img2 varchar2(300),
    img3 varchar2(300),
    img4 varchar2(300),
    img5 varchar2(300),
    img6 varchar2(300),
    img7 varchar2(300),
    img8 varchar2(300),
    img9 varchar2(300),
    img10 varchar2(300)
);

create table myhomereply(
    bno number,
    rno number primary key,
    writer varchar2(100),
    content varchar2(2000),
    regdate date default sysdate,
    updatedate date
);

create sequence myhomereply_seq
    start with 1
    increment by 1
    maxvalue 9999
    nocache
    nocycle;

alter table myhome
drop column updatedate; 

alter table myhome
add updatedate date; 

alter table myhome
add img10 varchar2(300);

alter table myhome
modify img varchar2(300);

alter table myhome
rename column img to thumb_img;

alter table myhome
add constraint bno_pk primary key(bno);

-- 작성자 외래키 설정 (user테이블 생성 후 추가하기)
alter table myhome
add constraint writer_fk foreign key
references user(nick);

-- 시퀀스 생성
create sequence myhome_seq
    start with 1
    increment by 1
    maxvalue 10000
    nocache
    nocycle;
    
    
-- answer 테이블 생성(pk 설정)
CREATE TABLE answer (
   answer_num NUMBER,
   quiz_num NUMBER,
   writer VARCHAR2(100) NOT NULL, --user_nickname
   content VARCHAR2(2000) NOT NULL,
   reg_date DATE DEFAULT SYSDATE,
   update_date DATE DEFAULT NULL,
   constraint answer_pk primary key(answer_num)
);
-- fk 설정
ALTER TABLE answer
ADD CONSTRAINT answer_fk FOREIGN KEY(quiz_num) 
REFERENCES quiz(quiz_num) ON DELETE CASCADE;
-- 시퀀스 생성
CREATE SEQUENCE answer_seq
   start with 1
   increment by 1
   maxvalue 10000
   nocache
   nocycle;
*/  




CREATE TABLE quiz (
quiz_num NUMBER,
writer VARCHAR2(100) NOT NULL, --user_nickname
title VARCHAR2(100) NOT NULL,
content VARCHAR2(2000) NOT NULL,
type VARCHAR2(50), --질문 유형
reg_date DATE DEFAULT SYSDATE,
update_date DATE DEFAULT NULL,
file_loca VARCHAR2(100),
views NUMBER DEFAULT 0,
constraint quiz_pk primary key(quiz_num)
);

CREATE SEQUENCE quiz_seq
start with 1
increment by 1
maxvalue 10000
nocache
nocycle;
*/
drop table users;
CREATE TABLE users (
	id VARCHAR2(100),
	pw VARCHAR2(50) NOT NULL,
	nick_name VARCHAR2(50) NOT NULL,
    user_Num number(10, 0) primary key,
	phone1 VARCHAR2(20) NOT NULL,
	phone2 VARCHAR2(20) NOT NULL,
	phone3 VARCHAR2(20) NOT NULL,
	grade VARCHAR2(20) DEFAULT 'normal',
	interest VARCHAR2(300),
	addr_basic VARCHAR2(300) NOT NULL,
	addr_detail VARCHAR2(300) NOT NULL,
	zip_num VARCHAR2(300) NOT NULL,
	major VARCHAR2(300),
	profile VARCHAR2(300),
	reg_date DATE DEFAULT SYSDATE,
	scrap VARCHAR2(500) 
	);

create sequence user_seq
    start with 1
    increment by 1
    maxvalue 10000
    nocache
    nocycle;
    
    alter table users
    add userNum number(10,0) primary key;
    
    select * from users;
    