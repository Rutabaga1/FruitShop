package service.impl;

import java.util.List;


import dao.FruitDao;
import domain.Fruit;

import service.FruitService;

public class FruitServiceImpl implements FruitService{
	private FruitDao fruitDao;
	public void setFruitDao(FruitDao fruitDao)
	{
		this.fruitDao = fruitDao;
	}
	@Override
	public int addFruit(Fruit fruit)
	{
		return (Integer) fruitDao.save(fruit);
	}
	@Override
	public List<Fruit> getAllFruits()
	{
		return fruitDao.findAll(Fruit.class);
	}
	@Override
	public void updateFruit(Fruit fruit)
	{
		fruitDao.update(fruit);
	}
	@Override
	public void deleteFruit(int id)
	{
		fruitDao.delete(Fruit.class, id);
	}
	@Override
	public Fruit getFruit(Integer id) {
		// TODO Auto-generated method stub
		return fruitDao.get(Fruit.class, id);
	}
	
}
