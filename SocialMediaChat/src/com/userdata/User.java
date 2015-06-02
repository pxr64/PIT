package com.userdata;

public class User {

	private String email, password, username;

	int id;

	public User(String email, String password, String username) {
		this.id = -1;
		this.username = username;
		this.email = email;
		this.password = password;
	}

	public User(String email, String password) {
		this.id = -1;
		this.email = email;
		this.password = password;
	}

	public User(int id, String email, String password) {
		this.id = id;
		this.email = email;
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}