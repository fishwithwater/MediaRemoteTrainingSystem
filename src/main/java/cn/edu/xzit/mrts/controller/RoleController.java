package cn.edu.xzit.mrts.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.xzit.mrts.DTO.ResultDTO;
import cn.edu.xzit.mrts.DTO.RoleDTO;
import cn.edu.xzit.mrts.service.RoleService;

@Controller
@RequestMapping("/role-manage")
public class RoleController {
	
	@Autowired
	private RoleService roleService;
	
	@RequestMapping("/role-list-without-pagination")
	@ResponseBody
	public ResultDTO roleList() {
		ResultDTO res = new ResultDTO();
		List<RoleDTO> roleList =  roleService.getRoleList();
		res.success(roleList);
		return res;
	}

}
