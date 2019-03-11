package cn.edu.xzit.mrts.header;

import java.util.Arrays;

public class StaticHeader {

	public static Header getTouristHeader(String label) {
		SubItem subItem1 = new SubItem("测试1-1", "test1/1");
		SubItem subItem2 = new SubItem("测试1-2", "test1/2");
		SubItem subItem3 = new SubItem("测试1-3", "test1/3");
		Item item1 = new Item("测试1", "#", Arrays.asList(subItem1, subItem2, subItem3));
		SubItem subItem4 = new SubItem("测试2-1", "test2/1");
		Item item2 = new Item("测试2", "#", Arrays.asList(subItem4));
		return new Header(label, Arrays.asList(item1, item2));
	}

}
