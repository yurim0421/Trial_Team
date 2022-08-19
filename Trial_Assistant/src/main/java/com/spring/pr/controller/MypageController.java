package com.spring.pr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.spring.pr.answer.service.IAnswerService;
import com.spring.pr.faq.service.IFaqService;
import com.spring.pr.user.service.IUserService;


@Controller
public class MypageController {
	
	@Autowired
	private IFaqService faqService;
	
	@Autowired
	private IAnswerService answerService;
	
	@Autowired
	private IUserService userService;
	
	//회원 정보 페이지 이동 
//	@GetMapping(/)
	
	//회원 정보 수정 페이지 이동 
	
	//회원 정보 수정 처리 
	
	
	//faq 연결 
//	@GetMapping("/notice/list")
//	public String listNotice(Model model) {
//		System.out.println("마이페이지 : /notice/list : Get");
//		model.addAttribute("moticeList", service.getList());
//	}
	
	//조력자 신청 현황 페이지 이동 (신청한 공고가 리스트에 뜨게) 
	
	//
	
	
	//로그아웃 
	
	
	
	

}
