package cn.edu.xzit.mrts.service;

import com.github.pagehelper.PageInfo;

import cn.edu.xzit.mrts.DTO.UserDTO;
import cn.edu.xzit.mrts.exception.BaseException;

public interface UserService {
	public UserDTO login(String username, String password) throws BaseException;

	public PageInfo<UserDTO> getUserList(Integer page, Integer size);
	
	public UserDTO addUser(UserDTO user)throws BaseException;
	
	public UserDTO getUserById(Integer userId)throws BaseException;
	
	public UserDTO updateUser(UserDTO user)throws BaseException;
	
	public void deleteUser(Integer id)throws BaseException;
}
