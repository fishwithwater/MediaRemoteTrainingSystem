package cn.edu.xzit.mrts.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.edu.xzit.mrts.header.StaticHeader;

@Controller
public class IndexController {
	
	@RequestMapping(value = "/login",method=RequestMethod.GET)
	public String login(HttpServletRequest request) {
		request.setAttribute("header", StaticHeader.getTouristHeader("登录"));
		return "login";
	}
}
