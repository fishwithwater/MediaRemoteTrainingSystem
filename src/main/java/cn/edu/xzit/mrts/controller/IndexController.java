package cn.edu.xzit.mrts.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.xzit.mrts.DTO.ResultDTO;
import cn.edu.xzit.mrts.DTO.UserDTO;
import cn.edu.xzit.mrts.constants.Contants;
import cn.edu.xzit.mrts.exception.BaseException;
import cn.edu.xzit.mrts.header.Header;
import cn.edu.xzit.mrts.header.StaticHeader;
import cn.edu.xzit.mrts.service.UserService;

@Controller
public class IndexController {

	@Autowired
	private UserService userService;

	/**
	 * 主页页面请求
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(HttpServletRequest request) {
		UserDTO user = (UserDTO) request.getSession().getAttribute("user");
		Header header = null;
		if (user == null) {
			header = StaticHeader.getTouristHeader("主页", "");
		} else if (user.getRid() == 1) {
			header = StaticHeader.getAdminHeader("主页", "");
		}
		request.setAttribute("header", header);
		return "index";
	}

	/**
	 * 登录页面请求
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(HttpServletRequest request) {
		HttpSession session = request.getSession();
		if (session.getAttribute("user") != null) {
			session.setAttribute("user", null);
		}
		request.setAttribute("header", StaticHeader.getTouristHeader("登录", ""));
		return "login";
	}

	/**
	 * 登录表单请求
	 * 
	 * @param username
	 * @param password
	 * @return
	 */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	@ResponseBody
	public ResultDTO login(String username, String password, HttpSession session) {
		ResultDTO res = new ResultDTO();
		try {
			UserDTO user = userService.login(username, password);
			session.setAttribute("user", user);
			res.success(user);
		} catch (BaseException e) {
			// TODO Auto-generated catch block
			res.exception(e);
		}
		return res;
	}

	/**
	 * 登出请求
	 * 
	 * @param session
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value = "/logout")
	public void logout(HttpSession session, HttpServletResponse response) throws IOException {
		// 清除登录信息
		if (session.getAttribute("user") != null) {
			session.setAttribute("user", null);
		}
		response.sendRedirect(Contants.PROJECT_INDEX_URL);
	}

}
