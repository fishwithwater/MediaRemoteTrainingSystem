package cn.edu.xzit.mrts.header;

/**
 * 下拉菜单的子选项
 *
 */
public class SubItem {
	private String name;
	private String url;

	public SubItem(String name, String url) {
		super();
		this.name = name;
		this.url = url;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	@Override
	public String toString() {
		return "SubItem [name=" + name + ", url=" + url + "]";
	}

}
