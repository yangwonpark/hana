package com.itbank.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.itbank.service.TourService;
import com.itbank.tour_item.Tour_ItemDTO;

@Controller
public class TourController {
	
	@Autowired
	private TourService ts;
	
	@RequestMapping(value="/tour/tourView", method = RequestMethod.GET)
	public String tourView() {
		return "/tour/tourView";
	}
	
	@GetMapping("/tour/tour_gangwon/{page}")
	public ModelAndView tour_gangwon(@PathVariable int page, String type, String word) {
		ModelAndView mav = new ModelAndView("/tour/tour_gangwonList");
		HashMap<String, Object> map = ts.getTour_ItemList(page, type, word);
		mav.addObject("map", map);
		return mav;
	}
	
	@GetMapping("/tour/tourGoods/{idx}")
	public ModelAndView tourGoods(@PathVariable int idx) {
		ModelAndView mav = new ModelAndView("/tour/tourGoods");
		Tour_ItemDTO dto = ts.getTour_Item(idx);
		mav.addObject("dto", dto);
		return mav;
	}
	
	@GetMapping("tour/tourInput")
	public String tourInput(HttpSession session) {
		return session.getAttribute("login") == null ? "redirect:/login/login_form" : "/tour/tourInput";
	}
	
	@PostMapping("tour/tourInput")
	public String tourInput(Tour_ItemDTO user) {
		int idx = ts.writeTour_Item(user);
		return idx != 0 ? "redirect:/tour/tourGoods/" + idx : "";
	}
	
	@PostMapping(value="tour/tourInput", produces="application/text;charset=utf8")
	public String tourInput(MultipartFile head_img, MultipartFile con_img) throws IllegalStateException, IOException {
		
		System.out.println(head_img.getOriginalFilename());
		System.out.println(con_img.getOriginalFilename());
		
		int row = ts.uploadFile(head_img, con_img);
		return "/tourInput/" + con_img.getOriginalFilename();	
	}
	
	@GetMapping(value="imgList", produces="application/text;charset=utf8")
	public String imgList() throws JsonProcessingException {
		String[] list = ts.getFileList();
		ObjectMapper mapper = new ObjectMapper();
		String data = mapper.writeValueAsString(list);
		return data;
	}
//	@GetMapping("/tour/tourInput")
//	public ModelAndView tourInput(HttpServletRequest request) {
//		ModelAndView mav = new ModelAndView("/tour/tourInput");
//		List<String> fileList = fs.getFileList();
//		mav.addObject("list", fileList);
//		return mav;
//	}
	
//	@PostMapping("/tour/tourInput")
//	public ModelAndView index(Tour_ItemDTO user, MultipartRequest request) throws IllegalStateException, IOException {
//		int idx = ts.writeTour_Item(user);
//		ModelAndView mav = new ModelAndView("redirect:/tour/tourGoods/" + idx + "");
//		MultipartFile file = request.getFile("uploadFile");		// �슂泥��뿉�꽌 �뙆�씪�쓣 爰쇰궡�꽌
//		boolean flag = fs.uploadFile(file);						// �꽌鍮꾩뒪�뿉寃� �쟾�떖�븯怨� 寃곌낵瑜� ���옣
//		if(flag == false) {										// �뾽濡쒕뱶 �떎�뙣�씪硫�	
//			mav.setViewName("msg");								// viewName�쓣 msg濡� 蹂�寃쏀븯怨�
//			mav.addObject("msg", "�뾽濡쒕뱶 �떎�뙣 !!");					// �뾽濡쒕뱶 �떎�뙣 硫붿떆吏�瑜� �쟾�떖 (msg.jsp�뿉�꽌 �솗�씤!)
//		}
//		return mav;
//	}

//	@GetMapping("/tour/tourInput")
//	public String tourInput() {
//		return "/tour/tourInput";
//	}
//	
//	@PostMapping("/tour/tourInput")
//	public String tourInput(Tour_ItemDTO dto, String uri, HttpSession session) {
////		ModelAndView mav = new ModelAndView("/tour/tourView");
////		
////		List<Tour_ItemDAO> tour_itemList = ts.getTour_ItemList();
////		
////		mav.addObject("tour_itemList", tour_itemList);
////		mav.addObject("tour_itemListSize", tour_itemList.size());
////		return mav;
//		
//		ts.insertTour_item(dto);
//		return "/tour/tourGoods";
//		
////		session.setAttribute("tourInput", ts.insertTour_item(dto));
////		uri = (uri == null) ? "/" : uri;
////		return "redirect:" + uri;
//	}
	
	// 占쏙옙占쏙옙/占쏙옙占쏙옙占쏙옙占쏙옙占� 占싱듸옙
//	@RequestMapping(value="/tour/tourView", method = RequestMethod.GET)
//	public String tour() {
//		return "/tour/tourView";
//	}
	
//	@GetMapping("/tour/tourView")
//	public ModelAndView view() {
//		ModelAndView mav = new ModelAndView("tour/tourView");
//		
//		List<MetroDTO> metroList = ts.getMetroList();
//		List<LocalDTO> localList = ts.getLocalList();
//		
//		mav.addObject("metroList", metroList);
//		mav.addObject("localList", localList);
//		return mav;
//	}
//	
//	@PostMapping("/tour/tourView")
//	public String tourSerach() {
//		return "/tour/tourSearch";
//	}
	
	
//		
//	@RequestMapping(value="/tour/tour_chungcheong", method = RequestMethod.GET)
//	public String tourChungcheong() {
//		return "/tour/tour_chungcheong";
//	}
//		
//	@RequestMapping(value="/tour/tour_gangwon", method = RequestMethod.GET)
//	public String tourGangwon() {
//		return "/tour/tour_gangwon";
//	}
//		
//	@RequestMapping(value="/tour/tour_gyeonggi", method = RequestMethod.GET)
//	public String tourGyeonggi() {
//		return "/tour/tour_gyeonggi";
//	}
//		
//	@RequestMapping(value="/tour/tour_gyeongsang", method = RequestMethod.GET)
//	public String tourGyeongsang() {
//		return "/tour/tour_gyeongsang";
//	}
//		
//	@RequestMapping(value="/tour/tour_jeju", method = RequestMethod.GET)
//	public String tourJeju() {
//		return "/tour/tour_jeju";
//	}
//		
//	@RequestMapping(value="/tour/tour_jeolla", method = RequestMethod.GET)
//	public String tourJeolla() {
//		return "/tour/tour_jeolla";
//	}
//		
//	@RequestMapping(value="/tour/tour_seoul", method = RequestMethod.GET)
//	public String tourSeoul() {
//		return "/tour/tour_seoul";
//	}	
//	
//	@RequestMapping(value="/tour/tourGoods", method = RequestMethod.GET)
//	public String tourGoods() {		
//		return "/tour/tourGoods";
//	}
	
//	@RequestMapping(value="/tour/tourInput", method = {RequestMethod.GET, RequestMethod.POST})
//	public String tourInput() {
//		return "/tour/tourInput";
//	}
	
//		ModelAndView mav = new ModelAndView("tour/tourView");
//		
//		List<Tour_ItemDTO> tour_itemList = ts.getMetroList();
//		//List<LocalDTO> localList = ts.getLocalList();
//		
//		mav.addObject("tour_itemList", tour_itemList);
//		//mav.addObject("localList", localList);
//		return mav;
	
}