package com.spring.myWeb.controller;

import java.io.File;
import java.nio.file.Files;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.UUID;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.myWeb.command.UserVO;
import com.spring.myWeb.quiz.util.QuizPageCreator;
import com.spring.myWeb.quiz.util.QuizPageVO;
import com.spring.myWeb.user.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService service;

	@Autowired
	private JavaMailSender mailSender;

	// 회원가입페이지(일반)이동
	@GetMapping("normalJoinPage")
	public String joinPageNormal() {
		return "user/normalJoin";
	}

	// 회원가입페이지(전문가)이동
	@GetMapping("proJoinPage")
	public String joinPagePro() {
		return "user/proJoin";
	}

	// 회원가입요청
	@PostMapping("/userJoin")
	public String join(UserVO vo, @RequestParam(required = false) MultipartFile file) {
		System.out.println("회원가입요청");
		try {
			String fileRealName = file.getOriginalFilename(); // 파일 정보
			Long size = file.getSize(); // 파일 사이즈

			System.out.println("파일명: " + fileRealName);
			System.out.println("사이즈: " + size);

			// 서버에서 저장할 파일 이름
			String fileExtension = fileRealName.substring(fileRealName.lastIndexOf("."), fileRealName.length());
			String uploadFolder = "C:\\test\\upload";

//				UUID uuid = UUID.randomUUID();
//				String[] uuids = uuid.toString().split("-");
//				String uniqueName = uuids[0];
//				System.out.println("생성된 고유 문자열: " + uniqueName);
//				System.out.println("확장자명: " + fileExtension);

			File saveFile = new File(uploadFolder + "\\" + vo.getNickName() + fileExtension);
			file.transferTo(saveFile); // 실제 파일 저장 메서드 (fileWriter 작업을 손쉽게 한방에 처리해 줍니다.)
			vo.setPaper(saveFile.toString());
		} catch (Exception e) {
			System.out.println("업로드 중 문제 발생!: " + e.getMessage());
		}
		service.userJoin(vo);

		return "user/loginPage";
	}

	// 회원정보 수정화면 요청
	@GetMapping("/userModify")
	public void userModify(HttpSession session, Model model) {
		System.out.println("/user/userModify: GET");

		int userNum = ((UserVO) session.getAttribute("user")).getUserNum();
		System.out.println(userNum);
		
		model.addAttribute("userInfo", service.userInfo(userNum));
	}

	// 회원정보수정요청
	@PostMapping("/userModify")
	public String userUpdate(UserVO vo, @RequestParam("file") MultipartFile file) {
		System.out.println("/user/userModify: POST");

		try {

			String id = vo.getId();
			int userNum = vo.getUserNum();
			String phone1 = vo.getPhone1();
			String phone2 = vo.getPhone2();
			String phone3 = vo.getPhone3();
			String interest = vo.getInterest();
			String addrBasic = vo.getAddrBasic();
			String addrDetail = vo.getAddrDetail();
			String zipNum = vo.getZipNum();

			// 파일 저장 경로
			// ※경로를 resources로 잡르면 was 재실행 시 워크 스페이스 내용으로 바뀌면서 파일 자동 삭제 됨
//			String resource = servletContext.getRealPath("/resources"); 
			String path = "C:\\home\\quiz\\upload";
			String profile = "";

			if (!file.isEmpty()) { // 업로드 파일이 있는 경우

				// 저장할 폴더 경로
				String uploadPath = path + "\\" + userNum;

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

				String fileName = uniqueName + fileExtension;

				// 파일 경로 + 이름
				String filePath = uploadPath + "\\" + fileName;

				System.out.println(filePath);

				File saveFile = new File(filePath);
				file.transferTo(saveFile);

				// sql에 저장할 파일 경로
				profile = userNum + "/" + fileName;

			}

			UserVO user = new UserVO(id, null, 0, null, phone1, phone2, phone3, null, interest, addrBasic, addrDetail,
					zipNum, null, profile, null, null, null);
			service.userUpdate(user);

		} catch (Exception e) {
			System.out.println("※파일 업로드 중 오류 발생※");
			e.printStackTrace();
		}

		return "redirect:/user/mypage?type=home";
	}

	// 회원탈퇴요청
	@PostMapping("/userDelete")
	public String userDelete(@RequestParam String id, RedirectAttributes ra, HttpSession session) {
		System.out.println("/user/userDelete: POST");

		service.userDelete(id);
		session.invalidate();
		ra.addFlashAttribute("msg", "delSuccess");
		return "redirect:/";
	}

	// 로그인페이지이동
	@GetMapping("/userLoginPage")
	public String loginPage() {
		return "user/loginPage";
	}

	// 로그인요청
	@PostMapping("/login")
	public String userLogin(String id, String pw, HttpSession session) {
		System.out.println("로그인요청");

		UserVO vo = service.userLogin(id, pw);

		if (vo != null) {
			System.out.println("로그인성공");
			session.setAttribute("user", vo);
			return "redirect:/user/mypage";
		} else {
			return "/user/loginfail";
		}
	}

	// 아이디중복체크
	@ResponseBody
	@PostMapping("/idCheck")
	public String idCheck(@RequestBody String id) {
		System.out.println("아이디중복체크요청");
		System.out.println(id);
		int chk = service.idCheck(id);
		if (chk == 1) {
			System.out.println("exist");
			return "exist";
		} else {
			System.out.println("send");
			return "send";
		}

	}

	// 닉네임중복체크
	@ResponseBody
	@PostMapping("/nickCheck")
	public String nickCheck(@RequestBody String nickName) {
		System.out.println("닉네임중복체크요청");
		int chk = service.nickCheck(nickName);
		if (chk == 1) {
			return "exist";
		} else {
			return "ok";
		}
	}

	// 이메일 인증관련
	@ResponseBody
	@PostMapping("/mailCheck")
	public String mailCheck(@RequestBody String id) {

		System.out.println("메일인증요청");
		System.out.println(id);

		// 인증번호생성
		Random random = new Random();
		int checkNum = random.nextInt(888888) + 111111;

		// 전송될메일관련
		String setFrom = "jashome.master@gmail.com";
		String toMail = id;
		String title = "회원가입 인증 이메일 입니다.";
		String content = "홈페이지를 방문해주셔서 감사합니다." + "<br><br>" + "인증 번호는 " + checkNum + "입니다." + "<br>"
				+ "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			helper.setText(content, true);
			mailSender.send(message);
		} catch (Exception e) {
			e.printStackTrace();
			return "notvalid";
		}
		String code = Integer.toString(checkNum);
		System.out.println(code);
		return code;
	}

	// 마이페이지 요청
	@GetMapping("/mypage")
	public void getMypage(HttpSession session, Model model) {
		System.out.println("/user/mypage: GET");

		UserVO user = (UserVO)session.getAttribute("user");
		int userNum = user.getUserNum();
		user = service.userInfo(userNum);		
		System.out.println(user.getProfile());
		model.addAttribute("userInfo", user);
	}
	
	//프로필 사진 요청
	@GetMapping("/display")
	public ResponseEntity<byte[]> getProfile(@RequestParam String profile) {
		System.out.println("프로필 사진 요청");
		// 프로필 사진 정보 전송
		File file = new File("C:\\home\\quiz\\upload" + "\\" + profile);
		System.out.println(file);
		
		ResponseEntity<byte[]> imgInfo = null;
		try {
			HttpHeaders headers = new HttpHeaders();
			headers.add("Content-Type", Files.probeContentType(file.toPath()));
			imgInfo = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), headers, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return imgInfo;
	}
	
	// 글 목록 요청(비동기)
	@GetMapping("/getList/{type}")
	@ResponseBody
	public Map<String, Object> getList(@PathVariable String type, @RequestParam int pageNum,
										HttpSession session) {
		System.out.println(type + "List GET");
		
		String nick = ((UserVO) session.getAttribute("user")).getNickName();
		
		QuizPageVO page = new QuizPageVO();
		page.setPageNum(pageNum);
		page.setCountPerPage(6);

		QuizPageCreator qpc = new QuizPageCreator();
		qpc.setPage(page);
		qpc.setPageBtn(5);
		if(type.equals("scrap")) {
			qpc.setPageTotalCount(service.scrapCount(nick));
		} else {
			qpc.setPageTotalCount(service.getTotalCount(type, nick));			
		}

		Map<String, Object> data = new HashMap<>();

		if (type.equals("home")) {
			data.put("list", service.homeArticles(nick, page));
		} else if(type.equals("quiz") || type.equals("recoQuiz")) {
			data.put("list", service.quizArticles(nick, type, page));
		} else if(type.equals("scrap")) {
			data.put("list", service.getScrap(pageNum, nick));
		} else if(type.equals("upgrade")) {
			data.put("list", service.proInfo(page));
		}
		
		data.put("paging", qpc);
		
		return data;
	}
	
	// 등업 신청 화면 요청
	@GetMapping("/proInfo/{userNum}")
	public String proInfo(@PathVariable int userNum, Model model) {
		System.out.println("/user/proInfo/" + userNum + ": GET");
		
		model.addAttribute("proInfo", service.userInfo(userNum));
		
		return "user/proInfo";
	}

}
