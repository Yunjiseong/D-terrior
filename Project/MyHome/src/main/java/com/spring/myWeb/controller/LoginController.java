package com.spring.myWeb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.myWeb.command.UserVO;
import com.spring.myWeb.user.service.UserService;

@Controller
@RequestMapping("/user")
public class LoginController {
	
	private UserService service;
	
	@PostMapping("/login")
	public String login(String id, String pw, Model model) {
		System.out.println("로그인요청");
		//db에서 꺼내온 id와 pw를 vo에 담음.
		
		UserVO vo = service.login(id, pw);
		if(vo != null) {
			System.out.println("로그인성공");
			return "/user/loginsuccess";
		} else {
			return "/user/loginfail";
		}
	}

}
