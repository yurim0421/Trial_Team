package com.spring.pr.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.pr.command.UserVO;
import com.spring.pr.user.service.IUserService;
import com.spring.pr.util.MailSendService;


@Controller
@RequestMapping("/user")
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	//도로명주소 승인키 -> devU01TX0FVVEgyMDIyMDYyMjE2MTc1NTExMjcxNjc=
	
	@Autowired
	private IUserService service;
	
	//기관/개인 선택 페이지로 이동 
	@GetMapping("/joinSelect")
	public String joinSelect() {
		System.out.println("user/joinSelect");
		return "user/joinSelect";
	}
	
	//개인 회원가입 페이지 이동 
	@GetMapping("/joinUser")
	public String joinUser() {
		System.out.println("user/joinUser");
		
		return "user/joinUser";
	}
	
	//기관 회원가입 페이지 이동 
	@GetMapping("/joinIns")
	public String joinIns() {
		System.out.println("user/joinIns");
		return "user/joinIns";
	}
	
	
	//아이디 중복 확인(비동기)  
	@ResponseBody
	@PostMapping("/idCheck")
	public String idCheck(@RequestBody String JOINID) {
		
		int result = service.idCheck(JOINID);
		System.out.println(result);
		
		if(result == 1) {
			
			System.out.println("컨트롤러: 존재하는 아이디입니다.");
			return "no";
			
		}else {
			
			System.out.println("컨트롤러 : 사용 가능한 아이디입니당.");
			return "ok";
		}
	}
	
	//이메일 일증 
	@Autowired
	private MailSendService mailService;
	
	@GetMapping("/mailCheck")
	@ResponseBody
	public String mailCheck(String joinEmail) {
		System.out.println("이메일 인증 요청 들어옴!");
		System.out.println("인증 이메일 : " + joinEmail);
		return mailService.joinEmail(joinEmail);
	}
	
	//회원 가입 처리 
	@PostMapping("/joinuuser")
	public String join(UserVO user, RedirectAttributes ra) {
		user.setJOINSOCNUM(user.getJOINSOCNUM1() + user.getJOINSOCNUM2()); 
		user.setJOINEMAIL(user.getJOINEMAIL1() + user.getJOINEMAIL2());
		user.setJOINPERSON("0");
		user.setJOINRIGHT("U");
		System.out.println("Param: " + user);
		
		service.join(user);
		ra.addFlashAttribute("msg", "joinSuccess");
		return "user/login";
	}
	
	//회원 가입 처리 
		@PostMapping("/joiniins")
		public String join2(UserVO user, RedirectAttributes ra) {
			System.out.println("join2 실행");
		
			user.setJOINSOCNUM(user.getJOINSOCNUM1() + user.getJOINSOCNUM2()); 
			user.setJOINEMAIL(user.getJOINEMAIL1() + user.getJOINEMAIL2());
			user.setJOINPERSON("1");
			user.setJOINRIGHT("U");
			System.out.println("Param: " + user);
			
			service.join(user);
			ra.addFlashAttribute("msg", "joinSuccess");
			return "user/login";
		}
	
	//로그인 화면 이동 
		@GetMapping("/login")
		public String login() {
			System.out.println("user/login");
			return "user/login";
		}
		
	//로그인 처리 
		@PostMapping("/Login")
		public String Login(@RequestBody String JOINID, @RequestBody String JOINPW) {
			System.out.println("로그인 실행");
			return "/home";
			
		}
		
		

	
	//화면참고용 
//	@GetMapping("/login")
//	public void login() {
//		//return "user/login";
//	}
	}
	
	
	
	
	
	
	
	

