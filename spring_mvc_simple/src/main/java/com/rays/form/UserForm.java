package com.rays.form;

import org.hibernate.validator.constraints.NotEmpty;

import com.rays.dto.UserDTO;
import com.rays.util.DataUtility;

public class UserForm {
	
	protected long id = 0;
	
	private Long[] ids;

	@NotEmpty(message="FirstName is required")
	private String firstName;

	@NotEmpty(message="LastName is required")
	private String lastName;

	@NotEmpty(message="Login is required")
	private String login;

	@NotEmpty(message="Password is required")
	private String password;

	@NotEmpty(message="Dob is required")
	private String dob;

	@NotEmpty(message="Address is required")
	private String address;
	
	private int pageNo;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Long[] getIds() {
		return ids;
	}

	public void setIds(Long[] ids) {
		this.ids = ids;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	
	public UserDTO getDto() {
		UserDTO dto = new UserDTO();
		dto.setId(id);
		dto.setFirstName(firstName);
		dto.setLastName(lastName);
		dto.setLogin(login);
		dto.setPassword(password);
		dto.setDob(DataUtility.stringToDate(dob));
		dto.setAddress(dto.getAddress());
		
		return dto;
	}
	
	


}
