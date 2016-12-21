package action;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import domain.Collection;
import domain.Fruit;

import service.CollectionService;
import service.FruitService;

public class CollectionAction extends ActionSupport {
	private CollectionService collectionService;
	private FruitService fruitService;

	public void setFruitService(FruitService fruitService) {
		this.fruitService = fruitService;
	}

	public void setCollectionService(CollectionService collectionService) {
		this.collectionService = collectionService;
	}
	
	
	private Collection collection;
	private List<Collection> collections;
	private int id;
	private int customerID;
	private List<Fruit> fruits;
	
	public Collection getCollection() {
		return collection;
	}
	public void setCollection(Collection collection) {
		this.collection = collection;
	}

	public List<Collection> getCollections() {
		return collections;
	}

	public void setCollections(List<Collection> collections) {
		this.collections = collections;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	public List<Fruit> getFruits() {
		return fruits;
	}

	public void setFruits(List<Fruit> fruits) {
		this.fruits = fruits;
	}	
	public int getCustomerID() {
		return customerID;
	}

	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}
	
	public String add()
	{
		// 调用业务逻辑组件的add()方法来处理用户请求		
		int result = collectionService.addCollection(collection);
		if(result > 0)
		{
			addActionMessage("恭喜您，收藏成功！");
			return SUCCESS;
		}
		addActionError("收藏失败，请重新输入！");
		return ERROR;
	}
	public String list()
	{
		ActionContext ctx = ActionContext.getContext();
		//int id=(Integer)ctx.getSession().get("customerID");
		setCollections(collectionService.getCustomerCollections(customerID));
		for (int i = 0; i < collections.size(); i++) {
			Collection sc=collections.get(i);
			
			fruits.add(fruitService.getFruit(sc.getFruitID()));
		}
		return SUCCESS;
	}
	public String delete()
	{
		collectionService.deleteCollection(id);
		return SUCCESS;
	}

	

	
	
	
}
