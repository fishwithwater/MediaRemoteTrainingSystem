package cn.edu.xzit.mrts.header;

import java.util.List;



/**
 * 页面头部渲染使用
 *
 */
public class Header {
	private String label;
	private String title = "多媒体远程培训系统";
	private List<Item> items;

	public Header(String label, List<Item> items) {
		super();
		this.label = String.format("%s - 多媒体远程培训系统", label);
		this.items = items;
	}
	
	/**
	 * 通过权限和label生成header
	 * @param label 标签页title
	 * @param author 权限字符串
	 * @return Header对象
	 */
//	public static Header getHeader(String label,String author) {
//		
//	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public List<Item> getItems() {
		return items;
	}

	public void setItems(List<Item> items) {
		this.items = items;
	}

	@Override
	public String toString() {
		return "Header [label=" + label + ", title=" + title + ", items=" + items + "]";
	}

}
