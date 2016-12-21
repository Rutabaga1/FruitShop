package service.impl;

import java.util.List;

import dao.CollectionDao;
import domain.Collection;

import service.CollectionService;

public class CollectionServiceImpl implements CollectionService{
	private CollectionDao collectionDao;
	
	

	public void setCollectionDao(CollectionDao collectionDao) {
		this.collectionDao = collectionDao;
	}
	
	
	//Collection
	@Override
	public int addCollection(Collection collection) {
		// TODO Auto-generated method stub
		return (Integer)collectionDao.save(collection);
	}

	@Override
	public List<Collection> getAllCollections() {
		// TODO Auto-generated method stub
		return collectionDao.findAll(Collection.class);
	}

	@Override
	public void deleteCollection(int id) {
		// TODO Auto-generated method stub
		collectionDao.delete(Collection.class, id);
	}


	@Override
	public List<Collection> getCustomerCollections(int id) {
		// TODO Auto-generated method stub
		return collectionDao.findOnes("select c from "+ Collection.class.getSimpleName() +"c where c.customerID=?0", id);
	}

	

}
