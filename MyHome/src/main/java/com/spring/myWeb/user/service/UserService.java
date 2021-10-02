package com.spring.myWeb.user.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.myWeb.command.MyHomeVO;
import com.spring.myWeb.command.QuizVO;
import com.spring.myWeb.command.UserVO;
import com.spring.myWeb.quiz.util.QuizPageVO;
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
	public UserVO userInfo(int userNum) {
		return mapper.userInfo(userNum);
	}
	
	//로그인 성공 여부
	@Override
	public UserVO userLogin(@Param("id") String id, @Param("pw") String pw) {
		return mapper.userLogin(id, pw);
	}
	

	@Override
	//회원정보 수정
	public void userUpdate(UserVO vo) {
		mapper.userUpdate(vo);
	}
	
	@Override
	public void userDelete(String id) {
		mapper.userDelete(id);
	}

	@Override
	public int idCheck(String id) {
		return mapper.idCheck(id);
	}
	
	@Override
	public int nickCheck(String nickName) {
		return mapper.nickCheck(nickName);
	}
	
	@Override
	public List<MyHomeVO> homeArticles(String nick, QuizPageVO page) {
		Map<String, Object> data = new HashMap<>();
		data.put("nick", nick);
		data.put("page", page);
		return mapper.homeArticles(data);
	}
	
	@Override
	public MyHomeVO homeArticle(int bno) {
		return mapper.homeArticle(bno);
	}
	
	@Override
	public List<QuizVO> quizArticles(String nick, String type, QuizPageVO page, String major) {
		Map<String, Object> data = new HashMap<>();
		data.put("nick", nick);
		data.put("page", page);
		data.put("type", type);
		data.put("major", major);
		
		List<QuizVO> list = mapper.quizArticles(data);
		
		for(QuizVO vo : list) {
			long today = System.currentTimeMillis();
			long regDate = vo.getRegDate().getTime();
			
			if((today - regDate) < 60*60*1000) {
				vo.setNewMark(true);
			} else {
				vo.setNewMark(false);
			}
		}
		return list;
	}
	
	
	@Override
	public int getTotalCount(@Param("type") String type, @Param("nick") String nick) {
		return mapper.getTotalCount(type, nick);
	}

	@Override
	public List<MyHomeVO> getScrap(@Param("pageNum") int pageNum, @Param("nick") String nick) {
		String scrap = mapper.getScrap(nick);		
		
		if(scrap == null) {
			scrap = "0000";
			return null;
		}
		
		int s=0;
		List<MyHomeVO> list = new ArrayList<>();
		for(int i=(pageNum-1)*24; i<(scrap.length()<pageNum*24?scrap.length():pageNum*24); i+=4) {
			s = Integer.parseInt(scrap.substring(i, i+4));
			list.add(mapper.homeArticle(s));
		}
		return list;
	}
	
	@Override
	public int scrapCount(String nick) {
		int count=0;
		String scrap = mapper.scrapCount(nick);
		if(scrap == null) {
			return 0;
		}
		for(int i=0; i<scrap.length(); i+=4) {
			count += 1;
		}
		return count;
	}
	
	@Override
	public List<UserVO> proInfo(QuizPageVO page) {
		return mapper.proInfo(page);
	}
	
	@Override
	public void upgrade(int userNum) {
		mapper.upgrade(userNum);
	}
	
	@Override
	   public void logout(HttpSession session) {
	      session.removeAttribute("user");
	      
	   }
	
}