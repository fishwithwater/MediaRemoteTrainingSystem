package cn.edu.xzit.mrts.header;

import java.util.Arrays;
import java.util.List;

public class StaticHeader {

	public static Header getHeader(Integer rid, String label) {
		if (rid == null) {
			return getTouristHeader(label);
		} else if (rid == 1) {
			return getAdminHeader(label);
		} else {
			return getTouristHeader(label);
		}
	}

	/**
	 * 游客显示的头部
	 * 
	 * @param label
	 * @param active
	 * @return
	 */
	private static Header getTouristHeader(String label) {
		SubItem subItem1 = new SubItem("测试1-1", "test1/1");
		SubItem subItem2 = new SubItem("测试1-2", "test1/2");
		SubItem subItem3 = new SubItem("测试1-3", "test1/3");
		Item item1 = new Item("测试1", "#", Arrays.asList(subItem1, subItem2, subItem3), label);
		SubItem subItem4 = new SubItem("测试2-1", "test2/1");
		Item item2 = new Item("测试2", "#", Arrays.asList(subItem4), label);
		return new Header(label, Arrays.asList(item1, item2));
	}

	/**
	 * 管理员显示的头部
	 * 
	 * @param label
	 * @param active
	 * @return
	 */
	private static Header getAdminHeader(String label) {
		SubItem subItem1 = new SubItem("用户管理", "user-manage");
		SubItem subItem2 = new SubItem("分组管理", "group-manage");
		Item item1 = new Item("用户管理", "#", Arrays.asList(subItem1, subItem2), label);

		SubItem subItem3 = new SubItem("测试2-1", "test2/1");
		Item item2 = new Item("测试2", "#", Arrays.asList(subItem3), label);

		return new Header(label, Arrays.asList(item1, item2));
	}

}
