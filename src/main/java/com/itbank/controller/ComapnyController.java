package com.itbank.controller;


import java.sql.SQLIntegrityConstraintViolationException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.company.CompanyDTO;
import com.itbank.service.CompanyService;

@Controller
public class ComapnyController {
	
	@Autowired
	private CompanyService cs;
	
	// 기업 등록 관련 컨트롤러
		@GetMapping("/myMenu/admin_company")
		public String adminCompany() {
			return "myMenu/admin_company";
		}
		
		@PostMapping("/myMenu/admin_company")
		public ModelAndView adminCompany(CompanyDTO dto) {
			ModelAndView mav = new ModelAndView();
			int company = cs.insertCompany(dto);
			mav.setViewName("/myMenu/admin_company");
			if (company == 1) {
				mav.addObject("company", "등록 되었습니다.");
				return mav;
			}else {
				mav.addObject("company", "등록 실패.");
				return mav;
			}
		}
		
		@GetMapping("/myMenu/admin_outmemberlist")
		public String outMemberList() {
			return "/myMenu/admin_outmemberlist";
		}
		
		@PostMapping("/myMenu/admin_outmemberlist")
		public ModelAndView outMemberList(CompanyDTO dto) {
			ModelAndView mav = new ModelAndView();
			int company = cs.insertCompany(dto);
			mav.setViewName("/myMenu/admin_company");
			if (company == 1) {
				mav.addObject("company", "등록 되었습니다.");
				return mav;
			}else {
				mav.addObject("company", "등록 실패.");
				return mav;
			}
		}
		
		@ExceptionHandler(SQLIntegrityConstraintViolationException.class)
		public ModelAndView companyJoin(SQLIntegrityConstraintViolationException e) {
			ModelAndView mav = new ModelAndView();
//			System.out.println(e);
//			e.printStackTrace();
//			mav.addObject("company", "다시 입력하여 등록해주세요");
			System.out.println("등록실패");
			mav.addObject("company", "등록 실패.");
			mav.setViewName("/myMenu/admin_company");
			return mav;
		}
		
		
		//myMenu/admin_outmemberlist
}
