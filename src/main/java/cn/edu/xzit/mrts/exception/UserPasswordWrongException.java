package cn.edu.xzit.mrts.exception;

public class UserPasswordWrongException extends BaseException{
	
	public UserPasswordWrongException() {
		super(100002, "用户密码错误");
	}

}
