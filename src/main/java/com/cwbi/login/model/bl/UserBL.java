package com.cwbi.login.model.bl;

import com.cwbi.login.model.entities.User;

@Deprecated
public interface UserBL {
	User login(String name, String password);
}
