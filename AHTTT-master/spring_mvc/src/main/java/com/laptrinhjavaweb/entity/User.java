package com.laptrinhjavaweb.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

//import org.springframework.security.core.GrantedAuthority;
//import org.springframework.security.core.authority.SimpleGrantedAuthority;

@Entity
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	private String username;
	private String password;
	private String phone;
	private String role;

	public User(String user_name, String password, String phone, String role) {
		super();
		this.username = user_name;
		this.password = password;
		this.phone = phone;
		this.role = role;
	}

	public User() {
		super();
	}

	public User(String role) {
		super();
		this.role = role;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String user_name) {
		this.username = user_name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
//	@Transient
//	  public List<GrantedAuthority> getAuthorities() {
//	    List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
//	      authorities.add(new SimpleGrantedAuthority(this.getRole()));
//	    return authorities;
//	  }

}
