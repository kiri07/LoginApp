package com.cwbi.login.model.bl;

import org.springframework.stereotype.Component;

import com.cwbi.login.model.entities.User;

@Component
@Deprecated
public class UserMockBL implements UserBL {
	
	public User login(String name, String password) {
		User user = null;
		if (name.equals("ciao") && password.equals("ciao"))
		{
			user = new User();
			user.setName(name);
			user.setPassword(password);
		}
		return user;
	}

}
