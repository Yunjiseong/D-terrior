package com.spring.myWeb.answer.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.myWeb.answer.mapper.IAnswerMapper;
import com.spring.myWeb.command.AnswerVO;

@Service
public class AnswerService implements IAnswerService {
	
	@Autowired
	private IAnswerMapper mapper;

	@Override
	public void regist(AnswerVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<AnswerVO> getList(int quizNum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void modify(AnswerVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(int answerNum) {
		// TODO Auto-generated method stub

	}

}
