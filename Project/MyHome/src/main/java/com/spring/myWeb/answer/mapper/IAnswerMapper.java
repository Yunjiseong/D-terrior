package com.spring.myWeb.answer.mapper;

import java.util.List;

import com.spring.myWeb.command.AnswerVO;

public interface IAnswerMapper {
	
	// 답변 등록
	void regist(AnswerVO vo);

	// 답변 목록
	List<AnswerVO> getList(int quizNum);

	// 답변 수정
	void modify(AnswerVO vo);

	// 답변 삭제
	void delete(int answerNum);

}
