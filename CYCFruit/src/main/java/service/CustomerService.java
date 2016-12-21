package service;

import java.util.List;



import domain.Customer;


public interface CustomerService {
	// 登录失败
	public static final int LOGIN_FAIL = 0;
	// 以普通员工登录
	public static final int LOGIN_CUS = 1;
	// 以经理登录
	public static final int LOGIN_ADMIN = 2;
	int validLogin(Customer cus);
	void deleteCustomer(int id);
	int addCustomer(Customer customer);
	List<Customer> getAllCustomers();
	void updateCustomer(Customer customer);
	//void resetPassword(Customer customer);
	//boolean findPasswordISOK(Customer customer);
	int getCustomer(Customer customer);;

	Customer getById(int id);
}
