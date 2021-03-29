package com.itbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.local.LocalDTO;
import com.itbank.metro.MetroDTO;
import com.itbank.searchInformation.SearchInformationDTO;
import com.itbank.service.HotelService;

@Controller
public class HotelController {
	
	@Autowired
	private HotelService hs;
	
	// 호텔예약으로 이동
	@GetMapping("/hotel/hotelView")
	public ModelAndView view() {
		ModelAndView mav = new ModelAndView("hotel/hotelView");
		
		List<MetroDTO> metroList = hs.getMetroList();
		List<LocalDTO> localList = hs.getLocalList();
		
		mav.addObject("metroListSize", metroList.size());
		mav.addObject("metroList", metroList);
		mav.addObject("localListSize", localList.size());
		mav.addObject("localList", localList);
		return mav;
	}
	
	
	@PostMapping(value="/hotel/hotelView")
	public ModelAndView hotelSearch(SearchInformationDTO dto) {
		ModelAndView mav = new ModelAndView("/hotel/hotelSearch");
		
		System.out.println(dto.getFrom());
		System.out.println(dto.getH_address());
		
		List<MetroDTO> metroList = hs.getMetroList();
		List<LocalDTO> localList = hs.getLocalList();
		
		mav.addObject("searchInfo", dto);
		mav.addObject("metroListSize", metroList.size());
		mav.addObject("metroList", metroList);
		mav.addObject("localListSize", localList.size());
		mav.addObject("localList", localList);
		return mav;
	}

}