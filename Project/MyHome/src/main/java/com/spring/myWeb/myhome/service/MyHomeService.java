package com.spring.myWeb.myhome.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.myWeb.command.MyHomeVO;
import com.spring.myWeb.myhome.mapper.IMyHomeMapper;
import com.spring.myWeb.myhome.util.PageVO;

@Service
public class MyHomeService implements IMyHomeService {
	
	//mapper 의존성 주입
	@Autowired
	private IMyHomeMapper mapper;

	//글 등록
	@Override
	public void regist(MyHomeVO vo) {
		mapper.regist(vo);
	}

	//글 목록 불러오기
	@Override
	public List<MyHomeVO> getList(PageVO paging) {
		return mapper.getList(paging);
	}

	//글 상세보기
	@Override
	public MyHomeVO getDetail(int bno) {
		return mapper.getDetail(bno);
	}

	//게시글 수 불러오기
	@Override
	public int getTotalArticles(PageVO paging) {
		return mapper.getTotalArticles(paging);
	}

	//글 수정
	@Override
	public void update(MyHomeVO vo) {
		mapper.update(vo);
	}

	//글 삭제
	@Override
	public void delete(int bno) {
		mapper.delete(bno);
	}

}
