package cn.edu.xzit.mrts.service;

import java.util.List;

import com.github.pagehelper.PageInfo;

import cn.edu.xzit.mrts.DTO.RoleDTO;

public interface RoleService {
	PageInfo<RoleDTO> getRoleList(Integer page,Integer size);
	List<RoleDTO> getRoleList();
}
