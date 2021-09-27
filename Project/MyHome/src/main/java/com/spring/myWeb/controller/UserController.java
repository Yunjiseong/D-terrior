package com.spring.myWeb.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import java.util.UUID;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.spring.myWeb.command.UserVO;
import com.spring.myWeb.user.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService service;

	@Autowired
	private JavaMailSender mailSender;


	//회원가입페이지(일반)이동
	@GetMapping("normalJoinPage")
	public String joinPageNormal() {
		return "user/normalJoin";
	}

	//회원가입페이지(전문가)이동
	@GetMapping("proJoinPage")
	public String joinPagePro() {
		return "user/proJoin";
	}

	//회원가입요청
	@PostMapping("/userJoin")
	public String join(UserVO vo, @RequestParam(required=false) MultipartFile file) {
		System.out.println("회원가입요청");
		try {
			String fileRealName = file.getOriginalFilename(); //파일 정보
			Long size = file.getSize(); //파일 사이즈
			
			System.out.println("파일명: " + fileRealName);
			System.out.println("사이즈: " + size);
			
			//서버에서 저장할 파일 이름
			String fileExtension = fileRealName.substring(fileRealName.lastIndexOf("."), fileRealName.length());
			String uploadFolder = "C:\\test\\upload";
			
//			UUID uuid = UUID.randomUUID();
//			String[] uuids = uuid.toString().split("-");
//			String uniqueName = uuids[0];
//			System.out.println("생성된 고유 문자열: " + uniqueName);
//			System.out.println("확장자명: " + fileExtension);
			
			File saveFile = new File(uploadFolder + "\\" + vo.getNickName() + fileExtension);
			file.transferTo(saveFile); //실제 파일 저장 메서드 (fileWriter 작업을 손쉽게 한방에 처리해 줍니다.)
			vo.setPaper(uploadFolder + saveFile.toString());
		} catch (Exception e) {
			System.out.println("업로드 중 문제 발생!: " + e.getMessage());
		}
		service.userJoin(vo);

		return "user/loginPage";
	}

	//회원정보수정요청
	@PostMapping("/userUpdate")
	public void userUpdate(UserVO vo) {
		System.out.println("회원정보수정요청");
		service.userUpdate(vo);
	}

	//회원탈퇴요청
	@PostMapping("/userDelete")
	public void userDelete(@RequestParam("id")String id, @RequestParam("pw")String pw) {
		System.out.println("회원탈퇴요청");
		service.userDelete(id, pw);
	}

	//로그인페이지이동
	@GetMapping("/userLoginPage")
	public String loginPage() {
		return "user/loginPage";
	}

	//로그인요청
	@PostMapping("/login")
	public String userLogin(String id, String pw, HttpSession session) {
		System.out.println("로그인요청");

		UserVO vo = service.userLogin(id, pw);

		if(vo != null) {
			System.out.println("로그인성공");
			session.setAttribute("user", vo);
			return "/user/loginsuccess";
		} else {
			return "/user/loginfail";
		}
	}

	//아이디중복체크
	@ResponseBody
	@PostMapping("/idCheck")
	public String idCheck(@RequestBody String id) {
		System.out.println("아이디중복체크요청");
		int chk = service.idCheck(id);
		if(chk == 1) {
			return "exist";
		} else {
			return "send";
		}

	}

	//닉네임중복체크
	@ResponseBody
	@PostMapping("/nickCheck")
	public String nickCheck(@RequestBody String nickName) {
		System.out.println("닉네임중복체크요청");
		int chk = service.nickCheck(nickName);
		if(chk == 1) {
			return "exist";
		} else {
			return "ok";
		}
	}

	//이메일 인증관련
	@ResponseBody
	@PostMapping("/mailCheck")
	public String mailCheck(@RequestBody String id) {

		System.out.println("메일인증요청");
		System.out.println(id);

		//인증번호생성
		Random random = new Random();
		int checkNum = random.nextInt(888888) + 111111;

		//전송될메일관련
		String setFrom = "jashome.master@gmail.com";
		String toMail = id;
		String title = "회원가입 인증 이메일 입니다.";
		String content = 
				"홈페이지를 방문해주셔서 감사합니다." +
						"<br><br>" + 
						"인증 번호는 " + checkNum + "입니다." + 
						"<br>" + 
						"해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
//		try {
//			MimeMessage message = mailSender.createMimeMessage();
//			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
//			helper.setFrom(setFrom);
//			helper.setTo(toMail);
//			helper.setSubject(title);
//			helper.setText(content,true);
//			mailSender.send(message);
//		} catch(Exception e) {
//			e.printStackTrace();
//			return "notvalid";
//		}
		String code = Integer.toString(checkNum);
		System.out.println(code);
		return code;
	}

}
