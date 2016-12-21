package dao.impl;


import java.util.List;


import common.dao.impl.BaseDaoHibernate4;
import dao.CustomerDao;
import domain.Customer;

public class CustomerDaoHibernate4 extends BaseDaoHibernate4<Customer>
implements CustomerDao
{

	
	@Override
	public int getCustomer(Customer customer) {
		// TODO Auto-generated method stub
		
		List<Customer> ml = find("select cus from "+ Customer.class.getSimpleName() +" cus where cus.userName = ?0 and cus.password=?1"
				, customer.getUserName() , customer.getPassword());
			if (ml != null && ml.size() > 0)
			{
				return ml.get(0).getId();
			}
			return 0;
	}
	
	
	
	
	}



