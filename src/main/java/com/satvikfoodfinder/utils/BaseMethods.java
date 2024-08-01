package com.satvikfoodfinder.utils;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Component;

@Component
public class BaseMethods {

	public static String getUserName() {
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		System.out.println("Authenticated user is: " + user);
		return user.getUsername();
	}

}
