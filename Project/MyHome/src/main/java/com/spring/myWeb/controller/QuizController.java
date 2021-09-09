package com.spring.myWeb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.myWeb.command.QuizVO;
import com.spring.myWeb.quiz.service.IQuizService;
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
	public String insert(QuizVO vo) {
		System.out.println("/quiz/insert: POST");
		
		service.regist(vo);
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
