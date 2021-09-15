package com.spring.myWeb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.myWeb.myhome.service.IMyHomeService;

@Controller
@RequestMapping("/myhome")
public class MyHomeController {
	
	@Autowired
	private IMyHomeService service;
	

}
