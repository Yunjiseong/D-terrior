package com.spring.myWeb;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spring.myWeb.command.MyHomeVO;
import com.spring.myWeb.myhome.mapper.IMyHomeMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/config/db-config.xml")
public class MyHomeMapperTest {
	
	@Autowired
	private IMyHomeMapper mapper;
	
	@Test
	public void registTest() {
		for(int i=1;i<=25;i++) {
			MyHomeVO vo = new MyHomeVO();
			vo.setWriter("abc12345");
			vo.setTitle("테스트" + i);
			vo.setContent("테스트 글쓰기" + i);
			vo.setImg("");
			vo.setHomeForm("");
			vo.setMoney("");
			vo.setAge("");
			vo.setHomeSize("");
			vo.setPlace("");
			vo.setDirection("");
			vo.setRoom("");
			vo.setFamily("");
			vo.setWorker("");
			vo.setRegion("");
			mapper.regist(vo);
//			System.out.println(vo);
		}
			
	}

}
