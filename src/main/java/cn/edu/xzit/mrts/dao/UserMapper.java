package cn.edu.xzit.mrts.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.edu.xzit.mrts.DTO.UserDTO;

@Repository
public interface UserMapper {
	UserDTO getUserByUsername(String username);
	List<UserDTO> getUserList();
}
