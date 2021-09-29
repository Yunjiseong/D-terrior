package com.spring.myWeb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.myWeb.command.MyHomeVO;
import com.spring.myWeb.myhome.service.IMyHomeService;
import com.spring.myWeb.myhome.util.PageCreator;
import com.spring.myWeb.myhome.util.PageVO;

@Controller
@RequestMapping("/myhome")
public class MyHomeController {
	
	@Autowired
	private IMyHomeService service;
	
	//내집뽐내기 글 목록 이동
	@GetMapping("")
	public String homeList(Model model) {
		System.out.println("/myhome/homeList: GET");
		PageVO paging = new PageVO();
		PageCreator pc = new PageCreator(paging, service.getTotalArticles(paging));
		
		model.addAttribute("pc", pc);
		model.addAttribute("myhome", service.getList(paging));
		
		return "myhome/homeList";
	}
	
	//내집뽐내기 글 목록 이동 (페이지 이동)
	@PostMapping("/homeList")
	public String homeList(PageVO paging, Model model) {
		System.out.println("/myhome/homeList: POST");
		PageCreator pc = new PageCreator(paging, service.getTotalArticles(paging));
		
		model.addAttribute("pc", pc);
		model.addAttribute("myhome", service.getList(paging));
		
		return "myhome/homeList";
	}
	
	//내집뽐내기 글쓰기 페이지 이동
	@GetMapping("/homeWrite")
	public void homeWrite() {
		System.out.println("/myhome/homeWrite: GET");
	}	
	
	//내집뽐내기 글 등록
	@PostMapping("/homeWrite")
	public String homeWrite(MyHomeVO vo, RedirectAttributes ra) {
		System.out.println("/myhome/homeWrite: POST");
		service.regist(vo);		
		ra.addFlashAttribute("msg", "writeSuccess");
		
		return "redirect:/myhome";
	}
	
	//내집뽐내기 글 상세보기 이동
	@GetMapping("/homeDetail")
	public void homeDetail(int bno, Model model) {
		System.out.println("/myhome/homeDetail: GET");
		model.addAttribute("home", service.getDetail(bno));		
	}
	
	//내집뽐내기 글 수정페이지 이동
	@GetMapping("/homeModify")
	public void homeModify() {
		System.out.println("/myhome/homeModify: GET");
	}
	
	//내집뽐내기 글 수정
	@PostMapping("/homeUpdate")
	public String homeUpdate(MyHomeVO vo, RedirectAttributes ra) {
		System.out.println("/myhome/homeUpdate: POST");
		ra.addFlashAttribute("msg", "updateSuccess");
		
		return "redirect:/myhome/homeDetail?bno=" + vo.getBno();
	}
	
	//내집뽐내기 글 삭제
	@GetMapping("/homeDelete")
	public String homeDelete(int bno, RedirectAttributes ra) {
		System.out.println("/myhome/homeDelete: GET");
		ra.addFlashAttribute("msg", "deleteSuccess");
		
		return "redirect:/myhome/homeList";
	}	
	
	 
}
