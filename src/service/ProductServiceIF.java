package service;
import java.util.ArrayList;

import dto.Product;

public interface ProductServiceIF {
	public void insert(Product product);
	public void update(Product product);
	public void delete(int pCode);
	
	public ArrayList<Product> getProducts();
	public Product getProductByCode(int pCode);
	
	public void updateStock(int pCode, int amount);
	public void updateRelease(int pCode, int amount);
}
