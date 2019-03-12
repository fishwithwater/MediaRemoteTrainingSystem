package cn.edu.xzit.mrts.header;

import java.util.Arrays;
import java.util.List;

public class StaticHeader {
	/**
	 * 游客显示的头部
	 * @param label
	 * @param active
	 * @return
	 */
	public static Header getTouristHeader(String label,String active) {
		SubItem subItem1 = new SubItem("测试1-1", "test1/1");
		SubItem subItem2 = new SubItem("测试1-2", "test1/2");
		SubItem subItem3 = new SubItem("测试1-3", "test1/3");
		Item item1 = new Item("测试1", "#", Arrays.asList(subItem1, subItem2, subItem3),active);
		SubItem subItem4 = new SubItem("测试2-1", "test2/1");
		Item item2 = new Item("测试2", "#", Arrays.asList(subItem4),active);
		return new Header(label, Arrays.asList(item1, item2));
	}
	
	/**
	 * 管理员显示的头部
	 * @param label
	 * @param active
	 * @return
	 */
	public static Header getAdminHeader(String label,String active) {
		SubItem subItem1 = new SubItem("用户管理", "user-manage");
		SubItem subItem2 = new SubItem("分组管理", "group-manage");
		Item item1 = new Item("用户管理", "#", Arrays.asList(subItem1, subItem2),active);
		
		SubItem subItem3 = new SubItem("测试2-1", "test2/1");
		Item item2 = new Item("测试2", "#", Arrays.asList(subItem3),active);
		
		return new Header(label, Arrays.asList(item1, item2));
	}

	
}
