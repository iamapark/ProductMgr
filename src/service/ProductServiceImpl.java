package service;

import java.util.ArrayList;

import dao.ProductDAO;
import dto.Product;
import exception.DuplicateException;

public class ProductServiceImpl implements ProductServiceIF{

	@Override
	public void insert(Product product) {
		try {
			ProductDAO.getInstance().insert(product);
		} catch (DuplicateException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void update(Product product) {
		ProductDAO.getInstance().update(product);
	}

	@Override
	public void delete(int pCode) {
		ProductDAO.getInstance().delete(pCode);
	}

	@Override
	public ArrayList<Product> getProducts() {
		return ProductDAO.getInstance().getProducts();
	}

	@Override
	public Product getProductByCode(int pCode) {
		Product product = ProductDAO.getInstance().getProductByCode(pCode);
		return product;
	}

	@Override
	public void updateStock(int pCode, int amount) {
		ProductDAO.getInstance().updateStock(pCode, amount);
	}

	public void updateRelease(int pCode, int amount) {
		ProductDAO.getInstance().updateRelease(pCode, amount);
	}

}
