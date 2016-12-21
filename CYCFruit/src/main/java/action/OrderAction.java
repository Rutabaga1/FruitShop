package action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import domain.Collection;
import domain.Fruit;
import domain.Order;
import domain.ShoppingCar;
import service.CustomerService;
import service.FruitService;
import service.OrderService;
import service.ShoppingCarService;

public class OrderAction extends ActionSupport  implements ServletRequestAware{
	private OrderService orderService;
	private FruitService fruitService;
	private CustomerService customerService;
	private ShoppingCarService shoppingCarService;
	private HttpServletRequest request;

	@Override
	public void setServletRequest(HttpServletRequest request) {
		
		this.request = request;
	}
	public void setShoppingCarService(ShoppingCarService shoppingCarService) {
		this.shoppingCarService = shoppingCarService;
	}
	public void setFruitService(FruitService fruitService) {
		this.fruitService = fruitService;
	}
	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}
	public void setCustomerService(CustomerService customerService) {
		this.customerService = customerService;
	}
	
	
	private ShoppingCar shoppingCar;
	private Order order;
	private List<Order> orders;
	private int id;
	private List<Fruit> fruits;
	private Fruit fruit;
	private Order orderEvaluate;
	private Integer selectedQ;
	private Integer fruitID;
	
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}

	public List<Order> getOrders() {
		return orders;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
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
	public Order getOrderEvaluate() {
		return orderEvaluate;
	}
	public void setOrderEvaluate(Order orderEvaluate) {
		this.orderEvaluate = orderEvaluate;
	}
	public Fruit getFruit() {
		return fruit;
	}
	public void setFruit(Fruit fruit) {
		this.fruit = fruit;
	}
	public ShoppingCar getShoppingCar() {
		return shoppingCar;
	}
	public void setShoppingCar(ShoppingCar shoppingCar) {
		this.shoppingCar = shoppingCar;
	}
	public Integer getFruitID() {
		return fruitID;
	}
	public void setFruitID(Integer fruitID) {
		this.fruitID = fruitID;
	}
	public Integer getSelectedQ() {
		return selectedQ;
	}
	public void setSelectedQ(Integer selectedQ) {
		this.selectedQ = selectedQ;
	}
	
	public String add()
	{
		/*Date day=new Date();
		order.setDate(day);*/
		// 调用业务逻辑组件的add()方法来处理用户请求	
		
		
		int result = orderService.addOrder(order);
		if(result > 0)
		{
			addActionMessage("恭喜您，添加成功！");
			return SUCCESS;
		}
		addActionError("添加失败，请重新输入！");
		return ERROR;
	}
	public String list()
	{
		ActionContext ctx = ActionContext.getContext();
		Map<String, Object> session = ctx.getSession();
		Integer customerID=(Integer)session.get("customerID");
		setOrders(orderService.getCustomerOrders(customerID));
		fruits=new ArrayList<Fruit>();
		for (int i = 0; i < orders.size(); i++) {
			Order sc=orders.get(i);
			
			fruits.add(fruitService.getFruit(sc.getFruitID()));
		}
		setFruits(fruits);
		return SUCCESS;
	}
	public String delete()
	{
		orderService.deleteOrder(id);
		return SUCCESS;
	}
	
	public String evaluate()
	{
		setOrderEvaluate(orderService.getOrder(1));
		
			
			setFruit(fruitService.getFruit(orderEvaluate.getFruitID()));
		
		return SUCCESS;
	}
	
	
	
	public String allOnes()
	{
		ActionContext ctx = ActionContext.getContext();
		Map<String, Object> session = ctx.getSession();
		Integer customerID=(Integer)session.get("customerID");
		
		/*int fid=Integer.parseInt(request.getParameter("fruitID"));
		int q=Integer.parseInt(request.getParameter("selectedQ"));
		order=new Order();
		fruit=fruitService.getFruit(fid);
		order.setFruitName(fruit.getFruitName());
		order.setPrice(fruit.getPrice());
		order.setPicture(fruit.getPicture());
		order.setQuantity(q);
		order.setAddress(customerService.getById(customerID).getDefaultAddress());
		setOrder(order);*/
		
		String scid[]=request.getParameterValues("shoppingCarId");
		List<Order> orderOnes=new ArrayList<Order>();
		double subPrice=0;
		
		for (int i = 0; i <scid.length; i++) {
			order=new Order();
			shoppingCar=new ShoppingCar();
			fruit=new Fruit();
			shoppingCar=shoppingCarService.getShoppingCar(Integer.parseInt(scid[i]));
			fruit=fruitService.getFruit(shoppingCar.getFruitID());
			order.setFruitName(fruit.getFruitName());
			order.setPrice(fruit.getPrice());
			order.setPicture(fruit.getPicture());
			order.setQuantity(shoppingCar.getQuantity());
			order.setAddress(customerService.getById(customerID).getDefaultAddress());
			subPrice += order.getPrice()*order.getQuantity();
			orderOnes.add(order);
			
		}
		setOrders(orderOnes);
		ctx.put("subPrice",String.valueOf(subPrice));
		ctx.put("defaultAddress",orders.get(0).getAddress());
		return SUCCESS;
		
		
		
	}
	
	
	
}
