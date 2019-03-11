package cn.edu.xzit.mrts.DTO;

import java.io.Serializable;

import cn.edu.xzit.mrts.exception.BaseException;

public class ResultDTO implements Serializable {
    private Integer code;
    private String desc;
    private Object data;

    public void success(Object data) {
        this.code = 200;
        this.desc = "success";
        this.data = data;
    }

    public void exception(BaseException e) {
        this.code = e.getCode();
        this.desc = e.getMessage();
        this.data = null;
    }

    public void fatalException(Exception e) {
        this.code = 500;
        this.desc = e.getMessage();
        this.data = null;
    }

	public Integer getCode() {
		return code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}

	@Override
	public String toString() {
		return "ResultDTO [code=" + code + ", desc=" + desc + ", data=" + data + "]";
	}
    
    
}