package cn.edu.xzit.mrts.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/resource")
public class ResourceController {
	
	@RequestMapping(value = "/upload",method = RequestMethod.GET)
	public String uploadPage() {
		return "resourceUpload";
	}
	
	
}
