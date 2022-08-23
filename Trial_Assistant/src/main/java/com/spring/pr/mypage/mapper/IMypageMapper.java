package com.spring.pr.mypage.mapper;

import org.apache.ibatis.annotations.*;

import com.spring.pr.command.*;

public interface IMypageMapper {
	
		//my info 정보 조회
		UserVO getInfo(String JOINID);
		
		//my info 정보 수정
		void updateUser(UserVO user);
		
		//회원 탈퇴 
		void deleteUser1(@Param("JOINSOCNUM") String JOINSOCNUM, @Param("JOINPW") String JOINPW, @Param("JOINNAME") String JOINNAME);
		void deleteUser2(@Param("JOINSOCNUM") String JOINSOCNUM, @Param("JOINPW") String JOINPW, @Param("JOINNAME") String JOINNAME);
		
		//조력자 신청 현황 페이지 
		
		//faq 페이지 
		
		//조력자 신청/선정 현황 조회
		//void getSup();
		
		// 조력자 신청 정보 수정 
		//void updateSup();
		
		
		
		//myfaq 질문 글 목록 조회
		//List<FaqVO> getList();
		
		// 총 게시물 수 
		//int getTotal();
		
		//myfaq 질문 등록 
		//void registFaq(FaqVO faq);
		
		//myfaq 상세보기 
		//FaqVO getContent(int FaqNum);
		
		//myfaq 글 수정
		//void updateFaq(FaqVO faq);
		
		//myfaq 글 삭제 
		//void deleteFaq(int FaqNum);
		
		//myfaq 글 조회수 
		//void upHit(int FaqNum);
		
		
		

}
