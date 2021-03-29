package com.itbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.add_category.Add_CategoryDTO;
import com.itbank.con_category.Con_CategoryDTO;
import com.itbank.entrepreneur.EntrepreneurDTO;
import com.itbank.hotel.HotelDTO;
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
		List<HotelDTO> hotelList = hs.getHotelList();
		List<EntrepreneurDTO> entrepreneurAll = hs.getEntrepreneurAll(); 

		mav.addObject("entrepreneurAll", entrepreneurAll);
		mav.addObject("hotelList", hotelList);
		mav.addObject("metroListSize", metroList.size());
		mav.addObject("metroList", metroList);
		mav.addObject("localListSize", localList.size());
		mav.addObject("localList", localList);
		return mav;
	}

	// 조건에 맞는 숙소 보여주는 페이지로 이동
	@RequestMapping(value= {"/hotel/hotelView", "/hotel/hotelSearch"}, method=RequestMethod.POST)
	public ModelAndView hotelSearch(SearchInformationDTO dto) {
		
		ModelAndView mav = new ModelAndView("/hotel/hotelSearch");
		
		List<MetroDTO> metroList = hs.getMetroList();
		List<LocalDTO> localList = hs.getLocalList();
		List<HotelDTO> hotelList = hs.getHotelList();
		List<Add_CategoryDTO> add_categoryList = hs.getAdd_CategoryList();
		List<Con_CategoryDTO> con_categoryList = hs.getCon_CategoryList();
		List<EntrepreneurDTO> entrepreneurList = hs.getEntrepreneurList(dto);
		
		mav.addObject("searchInfo", dto);
		mav.addObject("metroListSize", metroList.size());
		mav.addObject("metroList", metroList);
		mav.addObject("localListSize", localList.size());
		mav.addObject("localList", localList);
		mav.addObject("add_categoryList", add_categoryList);
		mav.addObject("add_categoryListSize", add_categoryList.size());
		mav.addObject("con_categoryList", con_categoryList);
		mav.addObject("con_categoryListSize", con_categoryList.size());
		mav.addObject("hotelList", hotelList);
		mav.addObject("hotelListSize", hotelList.size());
		mav.addObject("entrepreneurList", entrepreneurList);
		return mav;
	}

	@PostMapping("/hotel/hotelSelectOne")
	public ModelAndView hotelSelectOne(int entrepreneur_idx, int hotel_idx, SearchInformationDTO dto) {
		
		ModelAndView mav = new ModelAndView("/hotel/hotelSelectOne");
		List<MetroDTO> metroList = hs.getMetroList();
		List<LocalDTO> localList = hs.getLocalList();
		
		
		EntrepreneurDTO edto = hs.getEntrepreneur(entrepreneur_idx);
		HotelDTO hdto = hs.getHotel(hotel_idx);
		String hotelKind = hs.getHotelKind(hdto.getHotel_kind_idx());

		String[] add_facilityArr = hdto.getAdd_facility().split(",");
		
		mav.addObject("add_facilityArr", add_facilityArr);
		mav.addObject("hotelKind", hotelKind);
		mav.addObject("edto", edto);
		mav.addObject("hdto", hdto);
		mav.addObject("searchInfo", dto);
		mav.addObject("metroListSize", metroList.size());
		mav.addObject("metroList", metroList);
		mav.addObject("localListSize", localList.size());
		mav.addObject("localList", localList);
		return mav;
	}

	
	
}
