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
	public String join(UserVO vo, @RequestParam("file") MultipartFile file) {
		System.out.println("회원가입요청");
		try {
			String username = vo.getNickName();
			String fileLoca = "";
			// 파일 저장 경로
			String path = "C:\\projectfileupload";
			// 파일 이름에 사용할 날짜
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
			Date date = new Date();
			String fileDate = sdf.format(date);

			if(!file.isEmpty()) { // 업로드 파일이 있는 경우
				// 저장할 폴더 경로
				String uploadPath = path + "\\" + username;

				File folder = new File(uploadPath);
				if (!folder.exists()) {
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

				String fileName = fileDate + "_" + uniqueName + fileExtension;

				// 파일 경로 + 이름
				String filePath = uploadPath + "\\" + fileName;

				System.out.println(filePath);

				File saveFile = new File(filePath);
				file.transferTo(saveFile);

				// sql에 저장할 파일 경로
				fileLoca = username + "/" + fileName;
			} 

		} catch (Exception e) {
			System.out.println("※파일 업로드 중 오류 발생※");
			e.printStackTrace();
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
	public void userDelete(@Param("id")String id, @Param("pw")String pw) {
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

		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			helper.setText(content,true);
			mailSender.send(message);
		} catch(Exception e) {
			e.printStackTrace();
		}
		String code = Integer.toString(checkNum);
		System.out.println(code);
		return code;
	}

}
