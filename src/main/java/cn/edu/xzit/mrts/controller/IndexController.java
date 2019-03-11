package cn.edu.xzit.mrts.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.xzit.mrts.DTO.ResultDTO;
import cn.edu.xzit.mrts.DTO.UserDTO;
import cn.edu.xzit.mrts.exception.BaseException;
import cn.edu.xzit.mrts.header.StaticHeader;
import cn.edu.xzit.mrts.service.UserService;

@Controller
public class IndexController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/login",method=RequestMethod.GET)
	public String login(HttpServletRequest request) {
		request.setAttribute("header", StaticHeader.getTouristHeader("登录",""));
		return "login";
	}
	
	@RequestMapping(value = "/login",method=RequestMethod.POST)
	@ResponseBody
	public ResultDTO login(String username,String password) {
		ResultDTO res = new ResultDTO();
		try {
			UserDTO user = userService.login(username, password);
			res.success(user);
		} catch (BaseException e) {
			// TODO Auto-generated catch block
			res.exception(e);
		}
		return res;
	}
}
