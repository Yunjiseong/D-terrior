package com.spring.myWeb.user.mapper;

import org.apache.ibatis.annotations.Param;

import com.spring.myWeb.command.UserVO;

public interface IUserMapper {

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
		UserVO userLogin(@Param("id") String id, @Param("pw") String pw);
		
		//아이디 중복체크
		int idCheck(String id);
		
		//닉네임 중복체크
		int nickCheck(String nickName);
	

}
