package com.spring.myWeb.quiz.service;

import java.util.List;

import com.spring.myWeb.command.QuizVO;
import com.spring.myWeb.util.QuizPageVO;

public interface IQuizService {

	// 글 등록
	void regist(QuizVO vo);

	// 글 조회
	QuizVO getDetail(int quizNum);

	// 글 전체 조회
	List<QuizVO> getList(QuizPageVO paging);

	// 총 게시물 수
	int getTotalCount();

	// 글 수정
	void modify(QuizVO vo);

	// 글 삭제
	void delete(int quizNum);

}
