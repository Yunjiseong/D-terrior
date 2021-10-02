	package com.spring.myWeb.controller;

import java.io.File;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.myWeb.command.StoreVO;
import com.spring.myWeb.command.UserVO;
import com.spring.myWeb.quiz.util.QuizPageCreator;
import com.spring.myWeb.quiz.util.QuizPageVO;
import com.spring.myWeb.store.service.IStoreService;

@Controller
@RequestMapping("/store")
public class StoreController {
	
	@Autowired
	private IStoreService service;

	@GetMapping("/storeList")
	public void getList(QuizPageVO vo, Model model) {
		System.out.println("/store/storeList: GET");
				
		vo.setCountPerPage(8);
		QuizPageCreator qpc = new QuizPageCreator();
		qpc.setPage(vo);
		qpc.setPageTotalCount(service.getTotalCount());
		
		model.addAttribute("products", service.getList(vo));
		model.addAttribute("paging", qpc);
	}
	
	@GetMapping("/productIn")
	public void regist() {
		System.out.println("/store/productIn: GET");
	}
	
	@PostMapping("/productIn")
	public String insert(StoreVO product, RedirectAttributes ra, HttpSession session
							,@RequestParam MultipartFile thumbnailImg, MultipartHttpServletRequest productImgs) {
		System.out.println("/store/productInsert");
		int userNum = ((UserVO)session.getAttribute("user")).getUserNum();
		
		try {
			String thumbLoca = "";
			String proImgLoca = "";
			String fileRealName = "";
			UUID uuid = null;
			String[] uuids = null;
			String uniqueName = "";
			String fileExtension = "";
			String fileName = "";
			String filePath = "";
			File saveFile = null;

			String path = "C:\\home\\quiz\\upload";
				
			// 저장할 폴더 경로
			String uploadPath = path + "\\" + userNum;
			
			File folder = new File(uploadPath);
			if (!folder.exists()) {
				folder.mkdir();
			}
			
			// 서버에 저장할 파일 이름
			fileRealName = thumbnailImg.getOriginalFilename();
			
			// 파일명을 고유한 랜덤 문자로 작성 (중복 방지)
			uuid = UUID.randomUUID();
			uuids = uuid.toString().split("-");
			uniqueName = uuids[0];
			
			// 확장자
			fileExtension = fileRealName.substring(fileRealName.lastIndexOf("."), fileRealName.length());
			fileName = uniqueName + "_thumbnail" + fileExtension;
			
			// 파일 경로 + 이름
			filePath = uploadPath + "\\" + fileName;
			System.out.println(filePath);
			
			saveFile = new File(filePath);
			thumbnailImg.transferTo(saveFile);
			
			// sql에 저장할 파일 경로
			thumbLoca = userNum + "/" + fileName;
			product.setThumbnail(thumbLoca);
			
			
			List<MultipartFile> list = productImgs.getFiles("productImgs");
			List<String> imgs = new ArrayList<>();
			
			for(MultipartFile img : list) {
				// 서버에 저장할 파일 이름
				fileRealName = img.getOriginalFilename();
				
				// 파일명을 고유한 랜덤 문자로 작성 (중복 방지)
				uuid = UUID.randomUUID();
				uuids = uuid.toString().split("-");
				uniqueName = uuids[0];
				
				// 확장자
				fileExtension = fileRealName.substring(fileRealName.lastIndexOf("."), fileRealName.length());
				fileName = uniqueName + "_IMG" + fileExtension;
				
				// 파일 경로 + 이름
				filePath = uploadPath + "\\" + fileName;
				System.out.println(filePath);
				
				saveFile = new File(filePath);
				img.transferTo(saveFile);
				
				// sql에 저장할 파일 경로
				proImgLoca = userNum + "/" + fileName;
				imgs.add(proImgLoca);
				
			}
			
			String str = "";
			for(String i : imgs) {
				str += i + ",";
			}
			System.out.println(str);
			product.setProductImg(str);
			
			product.setUserNum(userNum);
			
			service.insert(product);
			ra.addFlashAttribute("msg", "inSuccess");
		} catch (Exception e) {
			System.out.println("※파일 업로드 중 오류 발생※");
			e.printStackTrace();
		}		
		return "redirect:/store/storeList";
	}
	
	@GetMapping("/productDetail/{pno}")
	public String getDetail(@PathVariable int pno, Model model) {
		System.out.println("/store/productDetail: GET");
		
		StoreVO product = service.getDetail(pno);
		String[] imgs = product.getProductImg().split(",");
		System.out.println(Arrays.toString(imgs));
		
		model.addAttribute("product", product);
		model.addAttribute("imgs", imgs);
		return "store/productDetail";
	}
	
	@GetMapping("/display")
	public ResponseEntity<byte[]> getProfile(@RequestParam String fileLoca) {
		System.out.println("스토어 사진 요청");

		File file = new File("C:\\home\\quiz\\upload\\" + fileLoca);
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
	
	@PostMapping("/productModify")
	public String modify(StoreVO product) {	
		System.out.println("/store/productModify: POST");
		
		int pno = product.getPno();
		service.getDetail(pno);
		
		return "redirect:/productDetail/" + pno;
	}
	
	@PostMapping("/productDelete")
	public String delete(@RequestParam int pno) {
		System.out.println("/store/productDelete: POST");
		
		service.delete(pno);
		
		return "redirect:/store/storeList";
	}
}