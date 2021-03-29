package com.itbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.local.LocalDTO;
import com.itbank.metro.MetroDTO;
import com.itbank.service.TourService;

@Controller
public class TourController {
	
	@Autowired
	private TourService ts;
	
	// 투어/입장권으로 이동
//	@RequestMapping(value="/tour/tourView", method = RequestMethod.GET)
//	public String tour() {
//		return "/tour/tourView";
//	}
	
	// 투어/입장권으로 이동
	@GetMapping("/tour/tourView")
	public ModelAndView view() {
		ModelAndView mav = new ModelAndView("tour/tourView");
		
		List<MetroDTO> metroList = ts.getMetroList();
		List<LocalDTO> localList = ts.getLocalList();
		
		mav.addObject("metroList", metroList);
		mav.addObject("localList", localList);
		return mav;
	}
	
	@PostMapping("/tour/tourView")
	public String tourSerach() {
		return "/tour/tourSearch";
	}
		
	@RequestMapping(value="/tour/tour_chungcheong", method = RequestMethod.GET)
	public String tourChungcheong() {
		return "/tour/tour_chungcheong";
	}
		
	@RequestMapping(value="/tour/tour_gangwon", method = RequestMethod.GET)
	public String tourGangwon() {
		return "/tour/tour_gangwon";
	}
		
	@RequestMapping(value="/tour/tour_gyeonggi", method = RequestMethod.GET)
	public String tourGyeonggi() {
		return "/tour/tour_gyeonggi";
	}
		
	@RequestMapping(value="/tour/tour_gyeongsang", method = RequestMethod.GET)
	public String tourGyeongsang() {
		return "/tour/tour_gyeongsang";
	}
		
	@RequestMapping(value="/tour/tour_jeju", method = RequestMethod.GET)
	public String tourJeju() {
		return "/tour/tour_jeju";
	}
		
	@RequestMapping(value="/tour/tour_jeolla", method = RequestMethod.GET)
	public String tourJeolla() {
		return "/tour/tour_jeolla";
	}
		
	@RequestMapping(value="/tour/tour_seoul", method = RequestMethod.GET)
	public String tourSeoul() {
		return "/tour/tour_seoul";
	}	
	
	@RequestMapping(value="/tour/tourGoods", method = RequestMethod.GET)
	public String tourGoods() {
		return "/tour/tourGoods";
	}
}