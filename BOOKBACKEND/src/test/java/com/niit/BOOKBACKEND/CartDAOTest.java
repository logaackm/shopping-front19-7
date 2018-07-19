package com.niit.BOOKBACKEND;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.BOOKBACKEND.Dao.CartDAO;
import com.niit.BOOKBACKEND.Model.CartItem;



public class CartDAOTest 
{

	static CartDAO cartDAO;
	
	@BeforeClass
	public static void preExecution()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		
		cartDAO=(CartDAO)context.getBean("cartDAO");
	}
	
	@Test
	public void addCartTest()
	{
		CartItem cartItem=new CartItem();
		
		cartItem.setProductId(12);
		cartItem.setProductName("FAMOUS FIVE");
		cartItem.setQuantity(10);
		cartItem.setStatus("NP");
		cartItem.setUsername("rrr");
		cartItem.setPrice(2500);
		
		assertTrue("Problem in Creating CartItem",cartDAO.addToCart(cartItem));
		System.out.println("----Successfully register----");
	}
}
