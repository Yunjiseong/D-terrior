package com.spring.myWeb.myhome.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.myWeb.command.MyHomeVO;
import com.spring.myWeb.command.PageVO;
import com.spring.myWeb.myhome.mapper.IMyHomeMapper;

@Service
public class MyHomeService implements IMyHomeService {
	
	@Autowired
	private IMyHomeMapper mapper;

	@Override
	public void regist(MyHomeVO vo) {

	}

	@Override
	public List<MyHomeVO> getList(PageVO paging) {
		return null;
	}

	@Override
	public MyHomeVO getDetail(int bno) {
		return null;
	}

	@Override
	public int getTotalArticles(PageVO paging) {
		return 0;
	}

	@Override
	public void update(MyHomeVO vo) {

	}

	@Override
	public void delete(int bno) {

	}

}
