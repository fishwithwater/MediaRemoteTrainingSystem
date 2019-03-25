package cn.edu.xzit.mrts.global;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String uri = request.getRequestURI();
		if(uri.indexOf("login") != -1) {
			return true;
		}
		HttpSession session = request.getSession();
		if(session.getAttribute("user") != null) {
			return true;
		}
		response.sendRedirect("/MediaRemoteTrainingSystem/login");
		return false;
	}
	
	
	
}
