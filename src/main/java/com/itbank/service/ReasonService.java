package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.itbank.member.Hash;
import com.itbank.member.MemberDAO;
import com.itbank.member.MemberDTO;
import com.itbank.reason.ReasonDAO;
import com.itbank.reason.ReasonDTO;

@Service
public class ReasonService {

	@Autowired
	private ReasonDAO rd;
	
	
	// 탈퇴사유 추가)
	public void insertReason(String reason) {
		rd.insertReason(reason);
	}

	public List<ReasonDTO> getReasonList() {
		return rd.selectReasonAll();
	}
}
