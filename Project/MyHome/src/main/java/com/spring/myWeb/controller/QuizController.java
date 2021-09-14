package com.spring.myWeb.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.spring.myWeb.command.QuizVO;
import com.spring.myWeb.quiz.service.IQuizService;
import com.spring.myWeb.util.QuizPageCreator;
import com.spring.myWeb.util.QuizPageVO;

@Controller
@RequestMapping("/quiz")
public class QuizController {

	@Autowired
	private IQuizService service;

	// q&a 목록 요청
	@GetMapping("/list")
	public void getList(Model model, QuizPageVO paging) {
		System.out.println("quiz/list: GET");

		QuizPageCreator qpc = new QuizPageCreator();
		qpc.setPage(paging);
		qpc.setPageTotalCount(service.getTotalCount());
		
		List<QuizVO> list = service.getList(paging);
		model.addAttribute("articles", list);
	}

	// 질문 상세보기 화면 요청
	@GetMapping("/detail/{quizNum}")
	public void article(@PathVariable int quizNum, Model model) {
		System.out.println("/quiz/detail: GET");
		
		model.addAttribute("article", service.getDetail(quizNum));
		
	}

	// 질문 등록 화면 요청
	@GetMapping("/regist")
	public void regist() {
		System.out.println("/quiz/regist: GET");

	}

	// 질문 등록 요청
	@PostMapping("/insert")
	@ResponseBody
	public String insert(@RequestParam("file") MultipartFile file,
							QuizVO article) {
		System.out.println("/quiz/insert: POST");
		
		try {
			String writer = ""; //session.id
			String content = article.getContent();
			String title = article.getTitle();
			String type = article.getType();
			// 파일 저장할 위치
			String fileLoca = writer;
			
			// 저장할 폴더 경로
			String uploadPath = "C:\\home\\quiz" + fileLoca;
			
			File folder = new File(uploadPath);
			if(!folder.exists()) {
				folder.mkdir();
			}
			
			// 서버에 저장할 파일 이름
			String fileRealName = file.getOriginalFilename();
			
			// 파일명을 고유한 랜덤 문자로 작성 (중복 방지)
			UUID uuid = UUID.randomUUID();
			String[] uuids = uuid.toString().split("-");
			String uniqueName = uuids[0];
			
			// 확장자
			String fileExtension = fileRealName.substring(fileRealName.lastIndexOf("."), fileRealName.length());
			
			String fileName = uniqueName + fileExtension;
			
			// 파일 경로 + 이름
			String filePath = uploadPath + "\\" + fileName;
			
			File saveFile = new File(filePath);
			file.transferTo(saveFile);
			
			QuizVO vo = new QuizVO(0, writer, title, content, type, filePath, null, null);
			service.regist(vo);
			
		} catch (Exception e) {
			System.out.println("※파일 업로드 중 오류 발생※");
		}
		
		return "redirect:/quiz/list";
	}

	// 수정 화면 요청
	@GetMapping("/modify")
	public void modify(@ModelAttribute("article") QuizVO vo) {
		System.out.println("/quiz/modify: GET");
		
	}

	// 질문 수정 요청
	@PostMapping("/update")
	public String update(QuizVO vo) {
		System.out.println("/quiz/update: POST");
		service.modify(vo);

		return "redirect:/quiz/detail";
	}

	// 질문 삭제 요청
	@PostMapping("/delete")
	public String delete(@RequestParam("quizNum") int quizNum) {
		System.out.println("/quiz/delete: POST");

		service.delete(quizNum);
		return "redirect:/quiz/list";
	}

}
