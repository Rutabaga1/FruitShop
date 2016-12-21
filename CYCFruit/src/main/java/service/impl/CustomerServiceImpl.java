package service.impl;
import java.util.List;

import dao.CustomerDao;
import domain.Customer;
import service.CustomerService;
public class CustomerServiceImpl implements CustomerService{
	private  CustomerDao customerDao;
	
	public void setCustomerDao(CustomerDao customerDao)
	{
		this.customerDao = customerDao;
	}
	
	@Override
	public int addCustomer(Customer user)
	{
		return (Integer) customerDao.save(user);
	}
	@Override
	public List<Customer> getAllCustomers()
	{
		return customerDao.findAll(Customer.class);
	}
	@Override
	public void updateCustomer(Customer customer)
	{
		customerDao.update(customer);
	}
	@Override
	public void deleteCustomer(int id)
	{
		customerDao.delete(Customer.class, id);
	}
	@Override
	public int validLogin(Customer customer)
	{
	
		// 如果找到普通员工，以普通员工登录
		if (customerDao.findOnes("select cus from Customer cus where cus.name = ?0 and cus.pass=?1"
				, customer.getUserName() , customer.getPassword()).size() >= 1)
		{
			return LOGIN_CUS;
		}
		// 如果找到一个经理，以经理登录
		/*else if (adminDao.findByNameAndPass(customer).size() >= 1)
		{
			return LOGIN_ADMIN;
		}*/
		else
		{
			return LOGIN_FAIL;
		}
	}
	
	/*public  boolean findPasswordISOK(Customer customer) {
	
			if(customer.getUserName()!=null && customer.getEmail()!=null){
				Customer storedAcct=customerDao.getCustomer(customer);
				return storedAcct!=null && storedAcct.getEmail().equals(customer.getEmail());
			}
			return false;
		}*/
	public  int getCustomer(Customer customer) {
		// TODO Auto-generated method stub
		return customerDao.getCustomer(customer);
	}

	@Override
	public Customer getById(int id) {
		// TODO Auto-generated method stub
		return customerDao.get(Customer.class,id);
	}	
	
}
