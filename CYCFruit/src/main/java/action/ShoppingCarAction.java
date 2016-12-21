package action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;


import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;


import domain.Fruit;
import domain.ShoppingCar;
import service.FruitService;
import service.ShoppingCarService;

public class ShoppingCarAction extends ActionSupport{
	private ShoppingCarService shoppingCarService;
	private FruitService fruitService;
	
	private Date today;
	
	
	public void setToday(Date today) {
		this.today = today;
	}

	public void setFruitService(FruitService fruitService) {
		this.fruitService = fruitService;
	}
	public void setShoppingCarService(ShoppingCarService shoppingCarService) {
		this.shoppingCarService = shoppingCarService;
	}
	
	private ShoppingCar shoppingCar;
	private List<ShoppingCar> shoppingCars;
	private int id;
	private int quantity;
	private List<Fruit> fruits; 
	
	public ShoppingCar getShoppingCar() {
		return shoppingCar;
	}
	public void setShoppingCar(ShoppingCar shoppingCar) {
		this.shoppingCar = shoppingCar;
	}

	public List<ShoppingCar> getShoppingCars() {
		return shoppingCars;
	}

	public void setShoppingCars(List<ShoppingCar> shoppingCars) {
		this.shoppingCars = shoppingCars;
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
	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	
	public String add()
	{
		
		//shoppingCar.setDate(today);
		// 调用业务逻辑组件的add()方法来处理用户请求	
		
		ActionContext ctx = ActionContext.getContext();
		Map<String, Object> session = ctx.getSession();
		Integer customerID=(Integer)session.get("customerID");
		//System.out.print(customerID);
		//Integer customerID=(Integer)ctx.getSession().get("customerID");
		shoppingCar.setCustomerID(customerID);
		
		int result = shoppingCarService.addShoppingCar(shoppingCar);
		if(result > 0)
		{
			addActionMessage("恭喜您，添加成功！");
			return SUCCESS;
		}
		addActionError("失败，请重新输入！");
		return ERROR;
	}
	public String list()
	{
		ActionContext ctx = ActionContext.getContext();
		Map<String, Object> session = ctx.getSession();
		Integer customerID=(Integer)session.get("customerID");
		//System.out.print(customerID+"!");
		//Integer customerID=(Integer)ctx.getSession().get("customerID");
		if(customerID!=null){
			List<ShoppingCar> unFull=shoppingCarService.getCustomerShoppingCars(customerID);//完善
			shoppingCars=new ArrayList<ShoppingCar>();
			for (int i = 0; i < unFull.size(); i++) {
				ShoppingCar sc=unFull.get(i);
			    Fruit one=fruitService.getFruit(sc.getFruitID());
			    sc.setFruitName(one.getFruitName());
			    sc.setPicture(one.getPicture());
			    sc.setPrice(one.getPrice());
			    shoppingCars.add(sc);
			    
			    //System.out.println(shoppingCars.get(i).getId());
			}
		
			setShoppingCars(shoppingCars);
			return SUCCESS;
		}
		return ERROR;
	}
	public String delete()
	{
		shoppingCarService.deleteShoppingCar(id);
		
		return SUCCESS;
	}
	
	public String update()
	{
		/*int id2=Integer.parseInt(request.getParameter("id"));
		int quantity2=Integer.parseInt(request.getParameter("quantity"));*/
		shoppingCar=new ShoppingCar();
		shoppingCar.setId(id);
		shoppingCar.setQuantity(quantity);
		shoppingCarService.updateShoppingCar(shoppingCar);
		
		return SUCCESS;
	}

	
	
	
	
	/*public String one()
	{
		setShoppingCar(shoppingCarService.getShoppingCar(1));//完善
		
		fruits.add(fruitService.getFruit(shoppingCar.getFruitID()));
		
		return SUCCESS;
	}*/

	

}
