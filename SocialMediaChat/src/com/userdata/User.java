package com.userdata;

import java.util.HashMap;
import java.util.Map;

public class User {



	private String email, password, name;
	private int id;
	private Map<Integer , String > friendList; 
	
	
	public User(User e) {
		super();
		this.email = e.getEmail();
		this.password = e.getPassword();
		this.name = e.getName();
		this.id = e.getId();
	}

	

	/**
	 * @param email
	 * @param name
	 * @param id
	 */
	public User(String email, String name, int id) {
	
		this.email = email;
		this.name = name;
		this.id = id;
		this.friendList=new HashMap<Integer, String>();
	}
	
	

	/**
	 * @param email
	 * @param password
	 * @param name
	 */
	public User(String email, String password, String name) {
		
		this.email = email;
		this.password = password;
		this.name = name;
		this.friendList=new HashMap<Integer, String>();
	}



	public User(String email, String password) {
		this.email=email;
		this.password=password;
		this.friendList=new HashMap<Integer, String>();
	}
	public User(int id, String email, String password, String name) {
		this.id = id; 
		this.email = email;
		this.password = password;
		this.name=name;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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
	
	
	public Map<Integer, String> getFriendList() {
		return friendList;
	}



	public void setFriendList(HashMap<Integer, String> friendList) {
		this.friendList = friendList;
	}

	
	
	public void addFriend(User x){
		System.out.println("Add friend"+x.getName());
		System.out.println(friendList);
		friendList.put(x.getId(), x.getName());
		
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result
				+ ((password == null) ? 0 : password.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (password == null) {
			if (other.password != null)
				return false;
		} else if (!password.equals(other.password))
			return false;
		return true;
	}
	
	
	

}
