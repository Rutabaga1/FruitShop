package service;

import java.util.List;

import domain.Order;


public interface OrderService
{
	// Ìí¼ÓÍ¼Êé
	int addOrder(Order order);

	List<Order> getAllOrders();
	
	void deleteOrder(int id);
	
	List<Order> getCustomerOrders(int id);
	
	Order getOrder(int id);
}
