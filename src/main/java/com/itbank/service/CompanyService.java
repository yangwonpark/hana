package com.itbank.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.company.CompanyDAO;
import com.itbank.company.CompanyDTO;

@Service
public class CompanyService {

	@Autowired
	private CompanyDAO cd;

	public int insertCompany(CompanyDTO dto) {
		return cd.insertCompany(dto);
	}




}
