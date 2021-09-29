package com.spring.myWeb.myhome.util;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PageCreator {
	
	private PageVO paging;
	private int beginPage, endPage;
	private int totalArticle;
	private boolean prev;
	private boolean next;	
	private final int buttonNum = 10;
	
	//생성자로 초기값 셋팅
	public PageCreator(PageVO paging, int totalArticle) {
		this.paging = paging;
		this.totalArticle = totalArticle;
		calcPage();
	}
	
	//페이지 변수 계산
	private void calcPage() {
		beginPage = (int) Math.floor((double) paging.getNowPage() / buttonNum) * buttonNum + 1;
		endPage = beginPage + buttonNum - 1;
		prev = beginPage == 1 ? false : true;
		next = paging.getCountPerPage() * endPage >= totalArticle ? false : true;		
	}
	

}
