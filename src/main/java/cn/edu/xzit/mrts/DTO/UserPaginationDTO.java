package cn.edu.xzit.mrts.DTO;

import java.util.List;

public class UserPaginationDTO {
	private List<UserDTO> rows;
	private Long total;
	
	public UserPaginationDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public List<UserDTO> getRows() {
		return rows;
	}
	public void setRows(List<UserDTO> rows) {
		this.rows = rows;
	}
	public Long getTotal() {
		return total;
	}
	public void setTotal(Long total) {
		this.total = total;
	}
	@Override
	public String toString() {
		return "UserPaginationDTO [rows=" + rows + ", total=" + total + "]";
	}
	
}
