package cn.edu.xzit.mrts.exception;

/**
 * 基础异常类
 *
 */
public class BaseException extends Exception {

    private Integer code;
    private String message;

    public BaseException(Integer code, String msg) {
        super();

        this.code = code;
        this.message = msg;
    }

	public Integer getCode() {
		return code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public String toString() {
		return "BaseException [code=" + code + ", message=" + message + "]";
	}
    
    
}
