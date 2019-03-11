package cn.edu.xzit.mrts.header;

import java.util.List;

/**
 * 页面顶部出现的功能项
 *
 */
public class Item {
	private Boolean dropdown;// 是否下拉
	private Boolean active;// 是否选中
	private String name;// 名称
	private String url;// 路径
	private List<SubItem> subItems;// 下拉菜单子选项

	public Item(String name, String url, List<SubItem> subItems) {
		this(true, false, name, url, subItems);
	}
	
	public Item(String name, String url, List<SubItem> subItems,String active) {
		this(true, false, name, url, subItems);
		if(this.name.equals(active)) {
			this.setActive(true);
		}
	}

	public Item(Boolean dropdown, Boolean active, String name, String url, List<SubItem> subItems) {
		super();
		this.dropdown = dropdown;
		this.active = active;
		this.name = name;
		this.url = url;
		this.subItems = subItems;
	}

	public Boolean getDropdown() {
		return dropdown;
	}

	public void setDropdown(Boolean dropdown) {
		this.dropdown = dropdown;
	}

	public Boolean getActive() {
		return active;
	}

	public void setActive(Boolean active) {
		this.active = active;
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

	public List<SubItem> getSubItems() {
		return subItems;
	}

	public void setSubItems(List<SubItem> subItems) {
		this.subItems = subItems;
	}

	@Override
	public String toString() {
		return "Item [dropdown=" + dropdown + ", active=" + active + ", name=" + name + ", url=" + url + ", subItems="
				+ subItems + "]";
	}

}
