package com.spring.myWeb.util;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class QuizPageVO {
	
	private int pageNum; //현재 페이지 번호
	private int countPerPage; //한 페이지 당 게시물 수
	
	public QuizPageVO() {
		this.pageNum = 1;
		this.countPerPage = 5;	
	}

}
