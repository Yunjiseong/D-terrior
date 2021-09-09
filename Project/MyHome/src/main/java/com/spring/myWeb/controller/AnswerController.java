package com.spring.myWeb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.myWeb.answer.service.IAnswerService;

@Controller
@RequestMapping("/answer")
public class AnswerController {

	@Autowired
	private IAnswerService service;

	
	
}
