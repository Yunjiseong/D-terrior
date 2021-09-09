package com.spring.myWeb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.myWeb.quiz.service.IQuizService;

@Controller
@RequestMapping("/quiz")
public class QuizController {
	
	@Autowired
	private IQuizService service;
	
	
	

}
