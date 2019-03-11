package cn.edu.xzit.mrts.dao;

import org.springframework.stereotype.Repository;

import cn.edu.xzit.mrts.DTO.UserDTO;

@Repository
public interface UserMapper {
	UserDTO getUserByUsername(String username);
}
