package action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import domain.Fruit;
import service.FruitService;

public class FruitShowAction extends ActionSupport {
	private FruitService fruitService;

	
	public void setFruitService(FruitService fruitService) {
		this.fruitService = fruitService;
	}
	
	private Fruit fruit;
	private List<Fruit> fruits;
	private int id;
	
	public Fruit getFruit() {
		return fruit;
	}
	public void setFruit(Fruit fruit) {
		this.fruit = fruit;
	}

	public List<Fruit> getFruits() {
		return fruits;
	}

	public void setFruits(List<Fruit> fruits) {
		this.fruits = fruits;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String list()
	{
		setFruits(fruitService.getAllFruits());
		return SUCCESS;
	}
	
	public String details()
	{
		setFruit(fruitService.getFruit(id));
		return SUCCESS;
	}

}
