package cn.edu.xzit.mrts.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.edu.xzit.mrts.DTO.RoleDTO;

@Repository
public interface RoleMapper {
	List<RoleDTO> getRoleList();
}
