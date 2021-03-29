package com.itbank.member;

public interface MemberDAO {

	void insertMember(MemberDTO dto);

	String selectId(String userId);
	
	String selectPnum(String userPnum);

	MemberDTO selectMember(MemberDTO dto);

	void updateMember(MemberDTO dto);

	MemberDTO updateUserMember(String userid);

}
