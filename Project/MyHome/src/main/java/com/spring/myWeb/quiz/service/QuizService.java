package com.spring.myWeb.quiz.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.myWeb.command.QuizVO;
import com.spring.myWeb.quiz.mapper.IQuizMapper;
import com.spring.myWeb.util.QuizPageVO;

@Service
public class QuizService implements IQuizService {

	@Autowired
	private IQuizMapper mapper;
	
	@Override
	public void regist(QuizVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public QuizVO getDetail(int quizNum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<QuizVO> getList(QuizPageVO paging) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getTotalCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void modify(QuizVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(int quizNum) {
		// TODO Auto-generated method stub

	}

}
