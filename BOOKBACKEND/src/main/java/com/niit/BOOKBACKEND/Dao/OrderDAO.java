package com.niit.BOOKBACKEND.Dao;

import com.niit.BOOKBACKEND.Model.OrderDetail;

public interface OrderDAO
{
	public boolean receiptGenerate(OrderDetail orderDetail);
	public boolean updateCartItemStatus(String username);
}
