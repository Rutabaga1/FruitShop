package dao.impl;



import org.hibernate.Query;

import dao.ShoppingCarDao;

import domain.ShoppingCar;
import common.dao.impl.BaseDaoHibernate4;


public class ShoppingCarDaoHibernate4 extends BaseDaoHibernate4<ShoppingCar>
	implements ShoppingCarDao
{
	
	public void update(String hql , Object... params){
		Query query =getSessionFactory().getCurrentSession().createQuery(hql);
			
		for(int i = 0 , len = params.length ; i < len ; i++)
		{
			query.setParameter(i + "" , params[i]);
		}
		
		query.executeUpdate();
	}
}
