package cn.edu.xzit.mrts.DTO;

public class RoleDTO {
	private Integer id;
	private String name;
	private String author;
	
	public RoleDTO() {
		super();
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	@Override
	public String toString() {
		return "RoleDTO [id=" + id + ", name=" + name + ", author=" + author + "]";
	}
	
	
}
