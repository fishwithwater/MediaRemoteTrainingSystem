package cn.edu.xzit.mrts.exception;

public class UserNotExistException extends BaseException {

	public UserNotExistException() {
		super(100001, "用户不存在");
	}

}
