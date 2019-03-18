package cn.edu.xzit.mrts.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.edu.xzit.mrts.DTO.UserDTO;

@Repository
public interface UserMapper {
	UserDTO getUserByUsername(String username);

	List<UserDTO> getUserList();

	UserDTO getUserById(@Param("id") Integer id);

	void addUser(@Param("user") UserDTO user);
	
	void updateUser(@Param("user")UserDTO user);
	
	void deleteUser(@Param("id")Integer id);

}
