package com.spring.myWeb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.spring.myWeb.answer.service.IAnswerService;
import com.spring.myWeb.command.AnswerVO;
import com.spring.myWeb.util.QuizPageVO;

// 비동기 통신
@RestController
@RequestMapping("/answer")
public class AnswerController {

	@Autowired
	private IAnswerService service;
	
	@PostMapping("/regist")
	public String regist(@RequestBody AnswerVO vo) {
		System.out.println("/answer/regist: POST");
		
		service.regist(vo);
		return "registSuccess";
	}
	
	@GetMapping("/list/{quizNum}/{pageNum}")
	public String getList(@PathVariable int quizNum, @PathVariable int pageNum ) {
		System.out.println("/answer/list: GET");
		
		QuizPageVO paging = new QuizPageVO();
		paging.setPageNum(pageNum);
		paging.setCountPerPage(5);
		
		service.getList(quizNum, paging);
		return ""; //비동기
	}
	
	@PostMapping("/delete")
	public String delete(@RequestBody int answerNum) {
		System.out.println("/answer/delete: POST");
		
		return "delSuccess";
	}
	
	
}
