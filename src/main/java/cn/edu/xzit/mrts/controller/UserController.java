package cn.edu.xzit.mrts.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.xzit.mrts.DTO.ResultDTO;
import cn.edu.xzit.mrts.DTO.UserDTO;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@RequestMapping(value = "/create-user", method = RequestMethod.POST)
	@ResponseBody
	public ResultDTO createUser(@RequestBody UserDTO user) {
		ResultDTO res = new ResultDTO();
		return res;
	}
	
	
}
