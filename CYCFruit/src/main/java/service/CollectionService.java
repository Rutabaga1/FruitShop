package service;

import java.util.List;

import domain.Collection;


public interface CollectionService {
	
	//Collection
	int addCollection(Collection collection);

	List<Collection> getAllCollections();
	
	void deleteCollection(int id);
	
	List<Collection> getCustomerCollections(int id);
}
