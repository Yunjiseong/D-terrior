package com.spring.myWeb.command;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/*
CREATE TABLE quiz (
   quiz_num NUMBER,
   writer VARCHAR2(100) NOT NULL, --user_nickname
   uploadpath VARCHAR2(100),
   fileloca VARCHAR2(100),
   filename VARCHAR2(50),
   filerealname VARCHAR2(50),
   title VARCHAR2(100) NOT NULL,
   content VARCHAR2(2000) NOT NULL,
   type VARCHAR2(50), --질문 유형
   reg_date DATE DEFAULT SYSDATE,
   update_date DATE DEFAULT NULL,
   constraint quiz_pk primary key(quiz_num)
);

CREATE SEQUENCE quiz_seq
   start with 1
   increment by 1
   maxvalue 10000
   nocache
   nocycle;
*/

@Getter
@Setter
@ToString
public class QuizVO {

	private int quizNum;
	private String writer;
	private String uploadpath;
	private String fileloca;
	private String filename;
	private String filerealname;
	private String title;
	private String content;
	private String type;
	private Timestamp regDate;
	private Timestamp updateDate;

}