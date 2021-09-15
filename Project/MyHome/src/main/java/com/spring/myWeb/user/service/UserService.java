package com.spring.myWeb.user.service;

import org.apache.ibatis.annotations.Param;

import com.spring.myWeb.command.UserVO;

public interface UserService {
	
	//CRUD 기능 메서드
	//회원등록
	void userJoin(UserVO vo);
	
	//회원정보 불러오기
	UserVO userInfo(String id);
	
	//회원정보 수정
	void userUpdate(UserVO vo);
	
	//회원탈퇴
	void userDelete(@Param("id") String id, @Param("pw") String pw);
	
	//로그인
	UserVO login(String id, String pw);
}
