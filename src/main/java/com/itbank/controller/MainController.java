package com.itbank.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	@RequestMapping("")
	public String index() {
		return "index";
	}
	
	// 로그인으로 이동
	@RequestMapping(value="/login/login_form", method = RequestMethod.GET)
	public String login() {
		return "/login/login_form";
	}
	
	// 회원가입으로 이동
	@RequestMapping(value="/join/join_form", method = RequestMethod.GET)
	public String join() {
		return "/join/join_form";
	}
	
	// 고객센터로 이동
	@RequestMapping(value="/manage/sc_main", method = RequestMethod.GET)
	public String serviceCenter() {
		return "/manage/sc_main";
	}
	
	// 마이메뉴로 이동
	@RequestMapping(value="/myMenu/myMenu_main", method = RequestMethod.GET)
	public String myMenu() {
		return "/myMenu/myMenu_main";
	}
	
	// 예약내역으로 이동
	@RequestMapping(value="/reservation/reserve_main", method = RequestMethod.GET)
	public String reserve() {
		return "/reservation/reserve_main";
	}
	
	// 장바구니으로 이동
	@RequestMapping(value="/cart/cart_form", method = RequestMethod.GET)
	public String cart() {
		return "/cart/cart_form";
	}
	
	
}
