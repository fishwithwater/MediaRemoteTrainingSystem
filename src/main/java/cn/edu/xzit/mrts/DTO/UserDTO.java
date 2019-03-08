package cn.edu.xzit.mrts.DTO;

public class UserDTO {
	private Integer id;
	private String username;
	private String password;
	private Integer rid;
	private Integer gid;
	
	
	
	public UserDTO() {
		super();
	}
	
	public UserDTO(String username, String password) {
		super();
		this.username = username;
		this.password = password;
		this.rid = 0; //默认角色
	}



	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Integer getRid() {
		return rid;
	}
	public void setRid(Integer rid) {
		this.rid = rid;
	}
	public Integer getGid() {
		return gid;
	}
	public void setGid(Integer gid) {
		this.gid = gid;
	}
	@Override
	public String toString() {
		return "UserDTO [id=" + id + ", username=" + username + ", password=" + password + ", rid=" + rid + ", gid=" + gid
				+ "]";
	}
	
}
