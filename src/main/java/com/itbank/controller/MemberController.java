package com.itbank.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.itbank.member.MemberDTO;
import com.itbank.oauth.OAuthToken;
import com.itbank.reason.ReasonDTO;
import com.itbank.service.MemberService;
import com.itbank.service.ReasonService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService ms;
	
	@Autowired
	private ReasonService rs;
	
	private ObjectMapper jsonMapper = new ObjectMapper();

// 관리자 회원가입 관련 컨트롤러 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~	
	@GetMapping("/join/join_admin")
	public String loginAdmin() {	
		return "/join/join_admin";
	}
	
	@PostMapping("/join/join_admin")
	public String loginAdmin(MemberDTO dto) {
//		System.out.println("아이디는 : " + user.getUserid());
//		System.out.println("이름은  : " + user.getName());
//		System.out.println("전화번호는 : " + user.getPnum());
		System.out.println("생년월일은 : " + dto.getBirth_date());
//		System.out.println("성별은 : " + user.getGender());
//		System.out.println("국가는 : " + user.getForeign());
//		System.out.println("유효기간은 : " + user.getExpiry_date());
//		System.out.println("sms수신은 : " + user.getAgree_sms());
//		System.out.println("전화수신은 : " + user.getAgree_pnum());
//		System.out.println("이메일수신은 : " + user.getAgree_email());
//		System.out.println("우편수신은 : " + user.getAgree_post());		
		ms.insertMember(dto);	
		return "redirect:/login/login_form";
	}
	
		
// 회원가입 관련 컨트롤러 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~	
	@PostMapping("/join/join_form")
	public String login(MemberDTO dto) {
		ms.insertMember(dto);	
		return "redirect:/login/login_form";
	}
	
	@PostMapping(value="checkId", produces="application/text;charset=utf8")
	@ResponseBody
	public String checkId(String userid) {
		boolean alreadyExist = ms.checkId(userid);
		return alreadyExist ? "이미 사용중 입니다" : "사용 가능합니다"; 
	}
	
	@PostMapping(value="checkPnum", produces="application/text;charset=utf8")
	@ResponseBody
	public String checkPnum(String pnum) {
		boolean alreadyExist = ms.checkPnum(pnum);
		return alreadyExist ? "이미 사용중 입니다" : "사용 가능합니다"; 
	}

// 로그인 관련 컨트롤러 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	
//	@PostMapping("/login/login_form")
//	public String login(MemberDTO user, String uri, HttpSession session) {
//		session.setAttribute("login", ms.getMember(user));
//		uri = (uri == null) ? "/" : uri;
//		return "redirect:" + uri;
//	}

	@PostMapping("/login/login_form")
	public ModelAndView login(MemberDTO user, String uri, HttpSession session) {
	
		ModelAndView mav = new ModelAndView();
		MemberDTO dto = ms.getMember(user);
		

		if (dto != null) {
			session.setAttribute("login", dto);
//			System.out.println(dto.getUserid());
//			System.out.println(dto.getUserpw());
//			System.out.println(dto.getUserkind());
//			System.out.println("controller : " + dto.getBirth_date());
//			System.out.println(dto.getJoin_date());
//			System.out.println(dto.getExpiry_date());
//			System.out.println(dto.getAgree_pnum());
			uri = (uri == null) ? "/" : uri;
			mav.setViewName("redirect:"+ uri);
			return mav;
		}else {
			mav.setViewName("/login/login_form");
			mav.addObject("lg", "로그인 실패");
			return mav;
		}
	}
	
	@RequestMapping("/logout/logout_form")
	public String logout(HttpSession session) {
		session.removeAttribute("login");
		return "logout/logout_form";
	}

// 마이메뉴 관련 컨트롤러
	
	@GetMapping("/myMenu/myinfo")
	public String myinfo() {
		return "myMenu/myinfo";
	}	

// 회원 수정
	@PostMapping("/myMenu/myinfo")
	public String myinfo(MemberDTO user, HttpSession session) {
		
		
		System.out.println("아이디는 : " + user.getUserid());
		System.out.println("이름은  : " + user.getName());
		System.out.println("전화번호는 : " + user.getPnum());
		System.out.println("생년월일은 : " + user.getBirth_date());
		System.out.println("성별은 : " + user.getGender());
		System.out.println("국가는 : " + user.getForeign());
		System.out.println("유효기간은 : " + user.getExpiry_date());
		System.out.println("sms수신은 : " + user.getAgree_sms());
		System.out.println("전화수신은 : " + user.getAgree_pnum());
		System.out.println("이메일수신은 : " + user.getAgree_email());
		System.out.println("우편수신은 : " + user.getAgree_post());
//		
//		MemberDTO dto = (MemberDTO) session.getAttribute("login");
//		System.out.println("아이디는 : " + dto.getUserid());
//		System.out.println("이름은  : " + dto.getName());
//		System.out.println("전화번호는 : " + dto.getPnum());
//		System.out.println("생년월일은 : " + dto.getBirth_date());
//		System.out.println("성별은 : " + dto.getGender());
//		System.out.println("국가는 : " + dto.getForeign());
//		System.out.println("유효기간은 : " + dto.getExpiry_date());
//		System.out.println("sms수신은 : " + dto.getAgree_sms());
//		System.out.println("전화수신은 : " + dto.getAgree_pnum());
//		System.out.println("이메일수신은 : " + dto.getAgree_email());
//		System.out.println("우편수신은 : " + dto.getAgree_post());
		ms.updateMember(user);
		session.setAttribute("login", ms.updateUserMember(user.getUserid()));
		
		
		
		return "redirect:/myMenu/myinfo";
	}	

//		탈퇴 사유 등록
	@GetMapping("/myMenu/admin_outmemberreason")
	public String outmemberreason() {
		return "/myMenu/admin_outmemberreason";
	}	
	
	@GetMapping(value="myMenu/admin_outmemberreason/{reason}", produces="application/text;charset=utf8")
	@ResponseBody 	
	public String member(@PathVariable String reason) throws JsonProcessingException {
		System.out.println("탈퇴 사유 : " + reason);
	//	String jsonString = jsonMapper.writeValueAsString(reason);
	//	System.out.println("jsonString : " + jsonString);
		rs.insertReason(reason);
		
		List<ReasonDTO> list = rs.getReasonList(); // 
		String reasonList = jsonMapper.writeValueAsString(list);  // 여러개의 dto를 json 문자열로 변경
			
		return reasonList;
	}

// 카카오 로그인 컨트롤러
	@GetMapping("/auth/kakao/callback")
	@ResponseBody  // data를 리턴해주는 컨트롤러 함수
	public String kakaoCallback(String code) {
		
		// POST 방식으로 key=value 데이터를 요청 (카카오쪽으로)
		// POST 방식이니깐 a태그로(get 방식이라서) 는 전달이 안됨...
		// Retrofit2
		// OkHttp
		// RestTemplate
		
		
		RestTemplate rt = new RestTemplate();
		
		// 우선 헤더를 만들자.. 헤더에 컨텐츠 타입을 넣어야 한다. 이뜻의 의미는 key value 형태라는 것을 알려주는것..
		// HttpHeader 오브젝트 생성
		HttpHeaders headers = new HttpHeaders();
		
		// HttpBody 오브젝트 생성
		MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
		params.add("grant_type", "authorization_code");
		params.add("client_id", "4e98c061f75136520e7139aead6e1df2");
		params.add("redirect_uri", "http://localhost:8080/day08/auth/kakao/callback");
		params.add("code", code);
		
		// HttpHeader와 HttpBody를 하나의 오브젝트에 담기 
		// 왜 담냐? exchange가 Http object를 담기 땜씨롱~~
		HttpEntity<MultiValueMap<String, String>> kakaoTokenRequest = 
				new HttpEntity<>(params,headers);
		
		// Http 요청하기 - Post 방식으로 - 그리고 response 변수의 응답 받음.
		ResponseEntity<String> response = rt.exchange(
				"https://kauth.kakao.com/oauth/token",
				HttpMethod.POST,
				kakaoTokenRequest,
				String.class
		);
				
		
		// Gson, Json Simple, ObjectMapper
		ObjectMapper objectMapper = new ObjectMapper();
		OAuthToken oauthToken = null;
		OAuthToken oauthMember = null;
		
		try {
			oauthToken = objectMapper.readValue(response.getBody(), OAuthToken.class);
		} catch (JsonProcessingException e) {
			
			e.printStackTrace();
		}
		
		System.out.println("카카오 엑세스 토큰 : " + oauthToken.getAccess_token());
		
		
		RestTemplate rt2 = new RestTemplate();
		HttpHeaders headers2 = new HttpHeaders();
		
		headers2.add("Authorization", "Bearer " + oauthToken.getAccess_token());
		headers2.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		
		HttpEntity<MultiValueMap<String, String>> kakaoProfileRequest2 = 
				new HttpEntity<>(headers2);
		ResponseEntity<String> response2 = rt2.exchange(
				"https://kapi.kakao.com/v2/user/me",
				HttpMethod.POST,
				kakaoProfileRequest2,
				String.class
		);	
		
		//return "카카오 토큰 요청 완료 : 토큰요청에 대한 응답" + response2.getBody();
		System.out.println(response.getBody());
		System.out.println(response2.getBody());
		
		//ms.insertkakaoMember(dto);
		
		try {
			oauthToken = objectMapper.readValue(response.getBody(), OAuthToken.class);
		} catch (JsonProcessingException e) {
			
			e.printStackTrace();
		}
		
		System.out.println();
		
		return null;
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
