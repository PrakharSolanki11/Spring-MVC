package com.rays.ctl;

import java.text.ParseException;
import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rays.dto.UserDTO;
import com.rays.form.UserRegistrationForm;
import com.rays.service.UserService;

@Controller
@RequestMapping(value = "Register")
public class UserRegistrationCtl {

	@Autowired
	private UserService service;

	@GetMapping
	public String display(@ModelAttribute("form") UserRegistrationForm form) {
		System.out.println("Get Method Called...!!!");
		return "UserRegistration";

	}

	@PostMapping
	public String submit(@ModelAttribute("form") UserRegistrationForm form , Model model) {

		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");

		UserDTO dto = new UserDTO();

		dto.setFirstName(form.getFirstName());
		dto.setLastName(form.getLastName());
		dto.setLogin(form.getLogin());
		dto.setPassword(form.getPassword());
		try {
			dto.setDob(sdf.parse(form.getDob()));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		dto.setAddress(form.getAddress());
		
		long pk =service.add(dto); 
		
		model.addAttribute("User","User Registered Successfully...!!!");

		return "UserRegistration";

	}

}