package com.DAo;


import com.entinty.user;

public interface UserDAo {
	public boolean userRegistre(user us);
	public user login(String email,String password);
	public boolean checkPassword(int id,String ps);
	public boolean updateProfile(user us);
	public boolean checkUser(String em);
}
