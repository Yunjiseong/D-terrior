package com.spring.myWeb.user.service;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.myWeb.command.UserVO;
import com.spring.myWeb.user.mapper.IUserMapper;

@Service
public class UserService implements IUserService {
	
	@Autowired
	private IUserMapper mapper;
	
	@Override
	//회원등록
	public void userJoin(UserVO vo) {
		mapper.userJoin(vo);
	}

	@Override
	//회원정보
	public UserVO userInfo(String id) {
		return null;
	}
	
	//로그인
	@Override
	public UserVO userLogin(@Param("id") String id, @Param("pw") String pw) {
		return mapper.userLogin(id, pw);
	}
	

	@Override
	//회원정보 수정
	public void userUpdate(UserVO vo) {
		mapper.userUpdate(vo);
	}


	//회원탈퇴
	@Override
	public void userDelete(@Param("id")String id, @Param("pw")String pw) {
		mapper.userDelete(id, pw);
	}

	@Override
	public int idCheck(String id) {
		return mapper.idCheck(id);
	}

}
