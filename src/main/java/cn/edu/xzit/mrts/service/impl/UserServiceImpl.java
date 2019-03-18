package cn.edu.xzit.mrts.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.edu.xzit.mrts.DTO.UserDTO;
import cn.edu.xzit.mrts.dao.UserMapper;
import cn.edu.xzit.mrts.exception.BaseException;
import cn.edu.xzit.mrts.exception.ResourceExistException;
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

	@Override
	public UserDTO addUser(UserDTO user) throws BaseException {
		// TODO Auto-generated method stub
		UserDTO dbUser = userMapper.getUserByUsername(user.getUsername());
		if(dbUser != null) {
			throw new ResourceExistException("用户名已存在");
		}
		
		userMapper.addUser(user);
		return userMapper.getUserByUsername(user.getUsername());
	}

	@Override
	public UserDTO getUserById(Integer userId) throws BaseException {
		UserDTO user = userMapper.getUserById(userId);
		if(user == null) {
			throw new UserNotExistException();
		}
		return user;
	}

	@Override
	public UserDTO updateUser(UserDTO user) throws BaseException {
		UserDTO dbUser = userMapper.getUserById(user.getId());
		if(dbUser == null) {
			throw new UserNotExistException();
		}
		dbUser = userMapper.getUserByUsername(user.getUsername());
		if(dbUser != null) {
			throw new ResourceExistException("用户名已存在");
		}
		userMapper.updateUser(user);
		return userMapper.getUserById(user.getId());
	}

	@Override
	public void deleteUser(Integer id) throws BaseException {
		// TODO Auto-generated method stub
		UserDTO dbUser = userMapper.getUserById(id);
		if(dbUser == null) {
			throw new UserNotExistException();
		}
		userMapper.deleteUser(id);
	}
	
	

}
