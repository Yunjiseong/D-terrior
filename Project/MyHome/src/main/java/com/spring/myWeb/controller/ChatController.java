package com.spring.myWeb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ChatController {
	
	@GetMapping("/chat")
	public String viewChat(HttpServletRequest request, HttpServletResponse response, Model model) {
		
		System.out.println("ä�ÿ�û");
		return "/user/viewChat";
		
	}

}
