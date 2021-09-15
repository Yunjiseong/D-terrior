package com.spring.myWeb.controller;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.myWeb.command.UserVO;
import com.spring.myWeb.user.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService service;

	//회원가입페이지(일반)이동
	@GetMapping("normalJoinPage")
	public String joinPageNormal() {
		return "user/normalJoin";
	}

	//회원가입페이지(전문가)이동
	@GetMapping("proJoinPage")
	public String joinPagePro() {
		return "user/proJoin";
	}

	//회원가입요청
	@PostMapping("/userJoin")
	public String join(UserVO vo) {
		System.out.println("회원가입요청");
		service.userJoin(vo);
		return "user/loginPage";
	}

	//회원정보수정요청
	@PostMapping("/userUpdate")
	public void userUpdate(UserVO vo) {
		System.out.println("회원정보수정요청");
		service.userUpdate(vo);
	}

	//회원탈퇴요청
	@PostMapping("/userDelete")
	public void userDelete(@Param("id")String id, @Param("pw")String pw) {
		System.out.println("회원탈퇴요청");
		service.userDelete(id, pw);
	}

	//로그인페이지이동
	@GetMapping("/userLoginPage")
	public String loginPage() {
		return "user/loginPage";
	}
	
	//로그인요청
	@PostMapping("/login")
	public String login(@Param("id") String id, @Param("pw") String pw) {
		System.out.println("로그인요청");
		//db에서 꺼내온 id와 pw를 vo에 담음.
		
		UserVO vo = service.userLogin(id, pw);
		
		if(vo != null) {
			System.out.println("로그인성공");
			return "/user/loginsuccess";
		} else {
			return "/user/loginfail";
		}
	}
	
}
