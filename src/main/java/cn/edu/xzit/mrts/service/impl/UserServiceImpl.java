package cn.edu.xzit.mrts.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.edu.xzit.mrts.DTO.UserDTO;
import cn.edu.xzit.mrts.dao.UserMapper;
import cn.edu.xzit.mrts.exception.BaseException;
import cn.edu.xzit.mrts.exception.UserNotExistException;
import cn.edu.xzit.mrts.exception.UserPasswordWrongException;
import cn.edu.xzit.mrts.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;

	@Override
	public UserDTO login(String username, String password) throws BaseException {
		System.out.println(password);
		UserDTO result = userMapper.getUserByUsername(username);
		if (result == null) {
			throw new UserNotExistException();
		}
		if (!result.getPassword().equals(password)) {
			throw new UserPasswordWrongException();
		}
		return result;
	}

	@Override
	public PageInfo<UserDTO> getUserList(Integer page, Integer size) {
		// TODO Auto-generated method stub
		PageHelper.startPage(page, size);
		List<UserDTO> userList = userMapper.getUserList();
		PageInfo<UserDTO> pageInfo = new PageInfo<UserDTO>(userList);
		return pageInfo;
	}

}
