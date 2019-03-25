package cn.edu.xzit.mrts.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/course")
public class CourseController {

	@RequestMapping("/detail")
	public String courseDetail() {
		return "course-detail";
	}
	
	@RequestMapping("/video")
	public String courseVideo() {
		return "course-video";
	}
	
}
