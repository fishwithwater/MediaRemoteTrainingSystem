package cn.edu.xzit.mrts.DTO;

import java.util.List;

public class UserPaginationDTO {
	private List<UserDTO> data;
	private Long total;
	
	public UserPaginationDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public List<UserDTO> getData() {
		return data;
	}
	public void setData(List<UserDTO> data) {
		this.data = data;
	}
	public Long getTotal() {
		return total;
	}
	public void setTotal(Long total) {
		this.total = total;
	}
	@Override
	public String toString() {
		return "UserPaginationDTO [data=" + data + ", total=" + total + "]";
	}
	
}
