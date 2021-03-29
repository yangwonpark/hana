//package com.itbank.interceptor;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
//
//public class LoginInterceptor extends HandlerInterceptorAdapter {
//
//	@Override
//	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
//			throws Exception {	
//		HttpSession session = request.getSession(false); 	
//		if(session != null && session.getAttribute("login") != null) { 
//			return true;
//		
//		}
//		String requestURI = request.getRequestURI(); 	
//		requestURI = requestURI.substring(request.getContextPath().length());	
//		System.out.println("requestURI(인터셉터) : " + requestURI);
//		
//		response.sendRedirect(request.getContextPath() + "/login/login_form?uri=" + requestURI);
//		return false;
//	}	
//}
