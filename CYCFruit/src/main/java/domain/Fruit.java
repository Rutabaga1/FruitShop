package domain;
import javax.persistence.*;

@Entity
@Table(name="fruit_inf")
public class Fruit {
	@Id @Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	@Column(name="fruitName")
	private String fruitName;
	private double price;
	private String picture;
	
	private String category;
	

	
	
	public Integer getId()
	{
		return id;
	}
	public void setId(Integer id)
	{
		this.id = id;
	}
	public String getFruitName()
	{
		return fruitName;
	}
	public void setFruitName(String fruitName)
	{
		this.fruitName = fruitName;
	}
	public String getPicture()
	{
		return picture;
	}
	public void setPicture(String picture)
	{
		this.picture = picture;
	}
	public double getPrice()
	{
		return price;
	}
	public void setPrice(double price)
	{
		this.price = price;
	}
	public String getCategory()
	{
		return category;
	}
	public void setCategory(String category)
	{
		this.category = category;
	}

}
