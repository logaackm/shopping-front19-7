package com.niit.BOOKBACKEND;

import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.BOOKBACKEND.Dao.UserDAO;
import com.niit.BOOKBACKEND.Model.UserDetail;

public class UserDaoTest {
	
	static UserDAO userDAO;
	
	@BeforeClass
	public static void preExecution()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		
		userDAO=(UserDAO)context.getBean("userDAO");
	}
	
	@Test
	public void addProductTest()
	{
		UserDetail user=new UserDetail();
		user.setUsername("logaa");
		user.setEmailId("logaa1996@gmail.com");
		user.setMobileNo("9790704795");
		user.setAddress("chennai");
		user.setCustomerName("logaackm");
		user.setEnabled(true);
		user.setRole("ROLE_ADMIN");
		user.setPassword("9940360197");
		
		assertTrue("Problem in Adding Category",userDAO.registerUser(user));
		System.out.println("----Successfully register----");
	}

}
