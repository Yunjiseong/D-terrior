package com.spring.myWeb;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spring.myWeb.command.AnswerVO;
import com.spring.myWeb.quiz.mapper.IAnswerMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/config/db-config.xml", "file:src/main/webapp/WEB-INF/config/servlet-config.xml"})
public class AnswerMapperTest {
	
	@Autowired
	private IAnswerMapper mapper;
	
	@Test
	public void registTest() {
		
		for(int i=1; i<=5; i++) {
			for(int j=1; j<=10; j++) {
				AnswerVO vo = new AnswerVO();
				vo.setQuizNum(i);
				vo.setWriter("김댓글" + i + "-" + j);
				vo.setContent("테스트 댓글" + i + "-" + j);
				mapper.regist(vo);
			}
		}
		
		System.out.println("댓글 등록이 완료되었습니다.");
	}
	
	/*
	@Test
	public void getListTest() {
		List<AnswerVO> list = mapper.getList(3);
		for(AnswerVO vo : list) {
			System.out.println(vo);
		}
	}
	
	@Test
	public void modifyTest() {
		AnswerVO vo = new AnswerVO();
		vo.setAnswerNum(2);
		vo.setContent("수정된 댓글 입니당~");
		mapper.modify(vo);
		
		List<AnswerVO> list = mapper.getList(1);
		for(AnswerVO a : list) {
			System.out.println(a);
		}
		
	}
	
	@Test
	public void deleteTest() {
		mapper.delete(3);
		
		List<AnswerVO> list = mapper.getList(1);
		for(AnswerVO a : list) {
			System.out.println(a);
		}
	}
	*/

}
