package com.itbank.service;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.itbank.tour_item.Tour_ItemDAO;
import com.itbank.tour_item.Tour_ItemDTO;
import com.itbank.tour_item.Paging;

@Service
public class TourService {
	
//	@Autowired
//	private MetroDAO metroDAO;	
//	@Autowired
//	private LocalDAO localDAO;
//	@Autowired
//	private Tour_PriceDAO tour_priceDAO;
	@Autowired
	private Tour_ItemDAO tour_itemDAO;
//	@Autowired
//	private EntrepreneurDAO entreprenuerDAO;

//	public List<MetroDTO> getMetroList() {
//		List<MetroDTO> metroList = metroDAO.getMetroList();
//		return metroList;
//	}
//
//	public List<LocalDTO> getLocalList() {
//		List<LocalDTO> localList = localDAO.LocalList();
//		return localList;
//	}
//	
//	public List<Tour_PriceDAO> getTour_PriceList() {
//		List<Tour_PriceDAO> tour_priceList = tour_priceDAO.getTour_PriceList();
//		return tour_priceList;
//	}
	
//	public List<Tour_ItemDAO> getTour_ItemList() {
//		List<Tour_ItemDAO> tour_itemList = tour_itemDAO.getTour_ItemList();
//		return tour_itemList;
//	}
//
//	public Object insertTour_item(Tour_ItemDTO dto) {
//		tour_itemDAO.insertTour_item(dto);
//		return dto;
//	}
	
	public HashMap<String, Object> getTour_ItemList(int page, String type, String word) {
		type = "".equals(type) ? null : type;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("type", type);
		map.put("word", word);
		
		int count = tour_itemDAO.selectCount(map);
		System.out.println("count : " + count);
		
		Paging paging = new Paging(page, count);
		map.put("first", paging.getFirst());
		map.put("last", paging.getLast());
		map.put("paging", paging);
		
		List<Tour_ItemDTO> list = tour_itemDAO.selectList(map);
		map.put("list", list);
		
		return map;
	}

	public Tour_ItemDTO getTour_Item(int idx) {
		return tour_itemDAO.selectOne(idx);
	}

	public int writeTour_Item(Tour_ItemDTO user) {
		int row = tour_itemDAO.inputTour_Item(user);		
		int idx = row == 1 ? tour_itemDAO.selectMaxIdx() : 0;	
		return idx;
	}
	
	private final String uploadPath = "C:\\upload\\tour";
	
	public int uploadFile(MultipartFile head_img, MultipartFile con_img) throws IllegalStateException, IOException {
		
		File f1 = new File(uploadPath, head_img.getOriginalFilename());
		head_img.transferTo(f1); 	
		
		File f2 = new File(uploadPath, con_img.getOriginalFilename());
		con_img.transferTo(f2); 
		
		HashMap<Object, Object> param = new HashMap<Object, Object>();
		param.put("uploadFileName", head_img.getOriginalFilename());
		param.put("uploadFileName", con_img.getOriginalFilename());
		
		return 1;
	}

	public String[] getFileList() {
		File dir = new File(uploadPath);
		if(dir.exists() && dir.isDirectory()) {
			return dir.list();
		}
		return null;
	}

//	public List<EntrepreneurDTO> getEntrepreneurAll() {
//		List<EntrepreneurDTO> entrepreneurAll = entreprenuerDAO.getEntrepreneurAll();
//		return entrepreneurAll;
//	}

}