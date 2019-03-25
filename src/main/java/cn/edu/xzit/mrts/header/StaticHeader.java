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
		SubItem subItem1 = new SubItem("全部课程", "test1/3");
		SubItem subItem2 = new SubItem("课程排行", "test1/2");
		SubItem subItem3 = new SubItem("课程分类", "test1/3");
		Item item1 = new Item("课程", "#", Arrays.asList(subItem1, subItem2, subItem3), label);

		SubItem subItem4 = new SubItem("学员排行", "test2/1");
		Item item2 = new Item("学员", "#", Arrays.asList(subItem4), label);

		Item item3 = new Item("首页", "", label);

		return new Header(label, Arrays.asList(item3, item1, item2));
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
		SubItem subItem2 = new SubItem("角色管理", "group-manage");
		Item item1 = new Item("用户管理", "#", Arrays.asList(subItem1, subItem2), label);

		SubItem subItem3 = new SubItem("资源审核", "resource/upload");
		SubItem subItem5 = new SubItem("资源上传", "resource/upload");
		Item item2 = new Item("资源管理", "#", Arrays.asList(subItem5), label);

		Item item3 = new Item("首页", "", label);

		SubItem subItem4 = new SubItem("全部课程", "course-all");
		SubItem subItem6 = new SubItem("课程审核", "test1/3");
		Item item4 = new Item("课程管理", "#", Arrays.asList(subItem4, subItem6), label);

		SubItem subItem7 = new SubItem("学员分组", "test2/1");
		Item item5 = new Item("学员管理", "#", Arrays.asList(subItem7), label);

		return new Header(label, Arrays.asList(item3, item4, item5, item1, item2));
	}
	
	/**
	 * 管理员显示的头部
	 * 
	 * @param label
	 * @param active
	 * @return
	 */
	private static Header getTeacherHeader(String label) {
		SubItem subItem2 = new SubItem("全部资源", "course-all");
		SubItem subItem3 = new SubItem("资源上传", "resource/upload");
		Item item2 = new Item("资源管理", "#", Arrays.asList(subItem3), label);

		Item item3 = new Item("首页", "", label);

		SubItem subItem4 = new SubItem("全部课程", "course-all");
		Item item4 = new Item("课程管理", "#", Arrays.asList(subItem4), label);

		SubItem subItem7 = new SubItem("学员排行", "test2/1");
		Item item5 = new Item("学员管理", "#", Arrays.asList(subItem7), label);

		return new Header(label, Arrays.asList(item3, item4, item5, item2));
	}

}
