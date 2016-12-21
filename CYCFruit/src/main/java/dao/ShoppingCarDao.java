package dao;

import java.util.List;


import domain.ShoppingCar;
import common.dao.BaseDao;


public interface ShoppingCarDao extends BaseDao<ShoppingCar>
{
	void update(String hql , Object... params);
}
