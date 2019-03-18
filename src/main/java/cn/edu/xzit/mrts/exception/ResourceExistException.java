package cn.edu.xzit.mrts.exception;

public class ResourceExistException extends BaseException{
	public ResourceExistException() {
		super(100003, "资源已存在");
	}
	
	public ResourceExistException(String msg) {
		super(100003, msg);
	}
}
