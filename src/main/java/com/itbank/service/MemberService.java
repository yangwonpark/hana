package com.itbank.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.itbank.member.Hash;
import com.itbank.member.MemberDAO;
import com.itbank.member.MemberDTO;

@Service
public class MemberService {

	@Autowired
	private MemberDAO md;
	
	
	// 일반 계정 등록
	public void insertMember(MemberDTO dto) {
		dto.setUserpw(Hash.getHash(dto.getUserpw()));
		md.insertMember(dto); 	
	}
	
	// 사용자 아이디 중복 체크
	public boolean checkId(String userid) {
		String dbId = md.selectId(userid);
		return dbId != null;
	}
	
	// 사용자 전화번호 중복 체크
	public boolean checkPnum(String userPnum) {
		String dbPnum = md.selectPnum(userPnum);
		return dbPnum != null;
	}

	// 로그인
	public MemberDTO getMember(MemberDTO dto) {
		dto.setUserpw(Hash.getHash(dto.getUserpw()));
		return md.selectMember(dto);
	}

	// 멤버 한명 정보 업데이트
	public void updateMember(MemberDTO dto) {
		md.updateMember(dto);
	}

	// 멤버 id로만 DTO 정보 가져오기.. (기 로그인 되어 있는 상태)
	public MemberDTO updateUserMember(String userid) {
		return md.updateUserMember(userid);
	}

}
