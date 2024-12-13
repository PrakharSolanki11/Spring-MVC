package com.rays.ctl;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller()
@RequestMapping(value="Welcome")
public class WelcomeCtl {

	
	@GetMapping
	public String display() {
		System.out.println("Display");
		return "Welcome";
	}
	
	@GetMapping("first")
	public String display1() {
		System.out.println("Display1");
		return "Welcome";
	}
	@GetMapping("second")
	public String display2() {
		System.out.println("Display2");
		return "Welcome";
	}
	@GetMapping("third")
	public String display3() {
		System.out.println("Display3");
		return "Welcome";
	}
	
	@GetMapping("getMessage")
	public String getMessage(Model model) {
		model.addAttribute("Msg", "Welcome to Spring-MVC ...!!!");
		return "Welcome";
	}
	
	

}
