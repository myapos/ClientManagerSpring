package com.myros.web.dao;
import  com.myros.web.model.User;

public interface UsersDAO {

	User findByUserName(String username);
	
}
