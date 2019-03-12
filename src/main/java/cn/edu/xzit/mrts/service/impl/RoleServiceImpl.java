package cn.edu.xzit.mrts.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.edu.xzit.mrts.DTO.RoleDTO;
import cn.edu.xzit.mrts.dao.RoleMapper;
import cn.edu.xzit.mrts.service.RoleService;

@Service
public class RoleServiceImpl implements RoleService {
	@Autowired
	private RoleMapper roleMapper;

	@Override
	public PageInfo<RoleDTO> getRoleList(Integer page, Integer size) {
		PageHelper.startPage(page, size);
		List<RoleDTO> roleList = roleMapper.getRoleList();
		PageInfo<RoleDTO> pageInfo = new PageInfo<RoleDTO>(roleList);
		return pageInfo;
	}

	@Override
	public List<RoleDTO> getRoleList() {
		return roleMapper.getRoleList();
	}

}
