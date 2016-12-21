package dao;

import java.util.List;

import common.dao.BaseDao;

import domain.Customer;

public interface CustomerDao extends BaseDao<Customer>{

	//List<Customer> findByNameAndPass(Customer customer);

	//void resetPassword(Customer customer);

	int getCustomer(Customer customer);

}
