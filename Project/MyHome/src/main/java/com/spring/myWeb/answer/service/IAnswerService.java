package com.spring.myWeb.answer.service;

import java.util.List;
import java.util.Map;

import com.spring.myWeb.command.AnswerVO;
import com.spring.myWeb.util.QuizPageVO;

public interface IAnswerService {

	// 답변 등록
	void regist(AnswerVO vo);

	// 답변 목록
	Map<String, Object> getList(int quizNum, QuizPageVO paging);

	// 답변 수정
	void modify(AnswerVO vo);

	// 답변 삭제
	void delete(int answerNum);

}
