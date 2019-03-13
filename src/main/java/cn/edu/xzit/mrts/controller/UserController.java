package cn.edu.xzit.mrts.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageInfo;
import com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIConversion.Static;

import cn.edu.xzit.mrts.DTO.ResultDTO;
import cn.edu.xzit.mrts.DTO.UserDTO;
import cn.edu.xzit.mrts.DTO.UserPaginationDTO;
import cn.edu.xzit.mrts.header.StaticHeader;
import cn.edu.xzit.mrts.service.UserService;

@Controller
@RequestMapping("/user-manage")
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping
	public String userManage(HttpSession session) {
		UserDTO user = (UserDTO)session.getAttribute("user");
		session.setAttribute("header", StaticHeader.getHeader(user.getRid(), "用户管理"));
		return "user-manage";
	}
	
	@RequestMapping(value = "/user-list", method = RequestMethod.GET)
	@ResponseBody
	public ResultDTO userList(Integer page,Integer size) {
		ResultDTO res = new ResultDTO();
		page = page == null ? 1 : page;
		size = size == null ? 10 : size;
		PageInfo<UserDTO> pageInfo = userService.getUserList(page, size);
		UserPaginationDTO users = new UserPaginationDTO();
		users.setRows(pageInfo.getList());
		users.setTotal(pageInfo.getTotal());
		res.success(users);
		return res;
	}
	
	@RequestMapping(value = "/create-user", method = RequestMethod.POST)
	@ResponseBody
	public ResultDTO createUser(@RequestBody UserDTO user) {
		ResultDTO res = new ResultDTO();
		System.out.println(user);
		return res;
	}
	
	
}
