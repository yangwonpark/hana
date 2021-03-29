package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.local.LocalDAO;
import com.itbank.local.LocalDTO;
import com.itbank.metro.MetroDAO;
import com.itbank.metro.MetroDTO;

@Service
public class TourService {
	
	@Autowired
	private MetroDAO metroDAO;
	
	@Autowired
	private LocalDAO localDAO;

	public List<MetroDTO> getMetroList() {
		List<MetroDTO> metroList = metroDAO.getMetroList();
		return metroList;
	}

	public List<LocalDTO> getLocalList() {
		List<LocalDTO> localList = localDAO.getLocalList();
		return localList;
	}

}