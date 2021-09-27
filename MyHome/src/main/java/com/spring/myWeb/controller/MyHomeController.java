package com.spring.myWeb.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.myWeb.command.MyHomeVO;
import com.spring.myWeb.myhome.service.IMyHomeService;
import com.spring.myWeb.myhome.util.PageVO;

@Controller
@RequestMapping("/myhome")
public class MyHomeController {
	
	@Autowired
	private IMyHomeService service;
	
	@GetMapping("/homeList")
	public String homeList() {
		System.out.println("/myhome/homeList: GET");
		PageVO paging = new PageVO();
		System.out.println("총 게시물 수: " + service.getTotalArticles(paging));
		
		return "myhome/homeList";
	}
		
	//내집뽐내기 글 목록 이동 (페이지 이동)
	@ResponseBody
	@GetMapping("/getList")
	public Map<String, Object> getList(PageVO paging, Model model) {
		System.out.println("/myhome/getList: GET");
		System.out.println("page객체: " + paging);
		
		List<MyHomeVO> list = service.getList(paging);				
		int total = service.getTotalArticles(paging);
		
		Map<String, Object> map = new HashMap<>();
		
		map.put("list", list);
		map.put("total", total);		
		
		System.out.println("총 게시물 수: " + service.getTotalArticles(paging));
				
		return map;
	}
	
	//내집뽐내기 글쓰기 페이지 이동
	@GetMapping("/homeWrite")
	public void homeWrite() {
		System.out.println("/myhome/homeWrite: GET");
	}		
	
	
	//내집뽐내기 글 등록
	@PostMapping("/homeWrite")
	@ResponseBody
	public String homeWrite(MyHomeVO vo, @RequestParam("file") MultipartFile file, RedirectAttributes ra) {
		System.out.println("/myhome/homeWrite: POST");

		try {
			String userName = vo.getWriter();
			
			//업로드 경로 설정
			String fileRealName = file.getOriginalFilename();
			long size = file.getSize();		
			String fileExtension = fileRealName.substring(fileRealName.lastIndexOf("."));
			String path = "C:\\home\\myhome\\upload\\" + userName;
			
			//폴더 생성
			File folder = new File(path);
			if(!folder.exists())
				folder.mkdir();		
			
			//날짜객체 생성
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
			String fileDate = sdf.format(date);
			
			//파일명 난수화
			UUID uuid = UUID.randomUUID();
			String codeName = uuid.toString().split("-")[0];
			String fileName = codeName + "_" + fileDate + fileExtension;
			
			//파일 저장
			File saveFile = new File(path + "\\" + fileName);			
			file.transferTo(saveFile);			
			
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "false";
		}	
		
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
