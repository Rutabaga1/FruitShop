package domain;
import javax.persistence.*;

@Entity
@Table(name="customer_inf")
public class Customer {
	@Id @Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	@Column(name="userName")
	private String userName;
	private String password;
	private String email;
	private String defaultAddress;
	@Transient
	private String newPassword;
	@Transient
	private String auto;
	
	/*public Customer()
	{
	}
	
	public Customer(String name ,  String password,String email,String defaultAddress)
	{
		this.username = name;
		this.password = password;
		this.email = email;
		this.defaultAddress = defaultAddress;
	}*/
	public Integer getId()
	{
		return id;
	}
	public void setId(Integer id)
	{
		this.id = id;
	}
	public String getUserName()
	{
		return userName;
	}
	public void setUserName(String username)
	{
		this.userName = username;
	}
	public String getPassword()
	{
		return password;
	}
	public void setPassword(String password)
	{
		this.password = password;
	}
	public String getEmail()
	{
		return email;
	}
	public void setEmail(String email)
	{
		this.email = email;
	}
	public String getDefaultAddress()
	{
		return defaultAddress;
	}
	public void setDefaultAddress(String defaultAddress)
	{
		this.defaultAddress = defaultAddress;
	}
	public String getNewPassword() {
        return newPassword;
    }
	 public void setNewPassword(String npsw) {
	        this.newPassword = npsw;
	    }
	public String getAuto() {
		return auto;
	}
	public void setAuto(String auto) {
		this.auto = auto;
	}
	
}
