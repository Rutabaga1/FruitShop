package service;

import java.util.List;


import domain.ShoppingCar;


public interface ShoppingCarService
{
	// ÃÌº”Õº È
	int addShoppingCar(ShoppingCar shoppingCar);

	List<ShoppingCar> getAllShoppingCars();
	
	void deleteShoppingCar(int id);
	
	void updateShoppingCar(ShoppingCar shoppingCar);
	
	List<ShoppingCar> getCustomerShoppingCars(int id);
	
	ShoppingCar getShoppingCar(int id);
}
