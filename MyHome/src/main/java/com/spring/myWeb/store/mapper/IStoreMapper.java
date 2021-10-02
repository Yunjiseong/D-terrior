package com.spring.myWeb.store.mapper;

import java.util.List;

import com.spring.myWeb.command.StoreVO;
import com.spring.myWeb.quiz.util.QuizPageVO;

public interface IStoreMapper {
	
	// 제품 등록
	void insert(StoreVO product);
	
	// 제품 상세보기
	StoreVO getDetail(int pno);
	
	// 제품 리스트
	List<StoreVO> getList(QuizPageVO page);
	
	// 제품 전체 수
	int getTotalCount();
	
	// 제품 수정
	void modify(int pno);
	
	// 제품 삭제
	void delete(int pno);

}