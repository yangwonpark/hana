package com.itbank.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.itbank.service.AdminService;

@Controller
public class AdminController {

	@Autowired
	private AdminService as;
	
	@GetMapping("/myMenu/admin_adminlist")
	public String adminList() {
		return "myMenu/admin_adminlist";
	}
	
	@GetMapping("/myMenu/admin_teamlist")
	public String teamList() {
		return "myMenu/admin_teamlist";
	}
	
	@GetMapping("/myMenu/admin_notice")
	public String notice() {
		return "myMenu/admin_notice";
	}
	
	
}
