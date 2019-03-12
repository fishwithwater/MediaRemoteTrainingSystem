package cn.edu.xzit.mrts.service;

import com.github.pagehelper.PageInfo;

import cn.edu.xzit.mrts.DTO.UserDTO;
import cn.edu.xzit.mrts.exception.BaseException;

public interface UserService {
	public UserDTO login(String username, String password) throws BaseException;

	public PageInfo<UserDTO> getUserList(Integer page, Integer size);
}
