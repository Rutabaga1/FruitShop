package action;


import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import domain.Customer;
import service.CustomerService;

public class CustomerAction extends ActionSupport implements ServletResponseAware{
	private CustomerService customerService;
	private HttpServletResponse response;

	public void setCustomerService(CustomerService customerService) {
		this.customerService = customerService;
	}
	
	public void setServletResponse(HttpServletResponse response)
	{
		this.response = response;
	}
	
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	private Customer customer;
	//private List<Customer> customers;
	private int id;
	/*private Map<String, Object> session;
	
	public void setSession(Map<String, Object> session) {
			this.session = session;
		}*/
	
	
	public String add()
	{
		// 调用业务逻辑组件的add()方法来处理用户请求	
		if(customer.getPassword().equals(customer.getNewPassword())){
			int result = customerService.addCustomer(customer);
			if(result > 0)
			{
				addActionMessage("恭喜您，注册成功！");
				return SUCCESS;
			}
			
		}
		addActionError("注册失败，请重新输入！");
		return ERROR;
	}
	
	public String one()
	{
		int l=customerService.getCustomer(customer);
		if(l!=0){
			customer.setId(l);
			//setCustomer(customer);	
			ActionContext ctx = ActionContext.getContext();
			
			Integer counter = (Integer)ctx.getApplication()
				.get("counter");
			
			if (counter == null)
			{
				counter = 1;
			}
			else
			{
				counter++;
			}		
			ctx.getApplication().put("counter" , counter);
			//ctx.getSession().put("customerID" , customer.getId());
			
			
			 /*Map<String, Object> session = new HashMap<String, Object>();  
		     ctx.setSession(session);  
		     session.put("customerID" , customer.getId());
		     session.put("customerName" , customer.getUserName());
		     System.out.println(session.get("customerID"));
			 System.out.println(customer.getId());*/
			
			Map<String, Object> session = ctx.getSession();
			session.put("customerID" , customer.getId());
			ctx.getSession().put("customerName" , customer.getUserName());
			//ctx.getSession().put("defaultAddress" , customer.getDefaultAddress());
			
			boolean check=false;
			
			if(customer.getAuto()!=null&&customer.getAuto().equals("auto")){
				Cookie namecookie=new Cookie("userName",customer.getUserName());			
	        	namecookie.setMaxAge(7*24*60*60);
	        	response.addCookie(namecookie);
	        	
	        	Cookie pswcookie=new Cookie("password",customer.getPassword());			
	        	pswcookie.setMaxAge(7*24*60*60);
	        	response.addCookie(pswcookie);
	        	
	        	check=true;
	        	
			}
			ctx.getSession().put("check" , check);
			
			return SUCCESS;
		}
		addActionMessage("请重新登录！");
		return ERROR;
	}
}
