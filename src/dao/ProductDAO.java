package dao;

import java.sql.SQLException;
import java.util.ArrayList;

import com.ibatis.sqlmap.client.SqlMapClient;

import dto.Product;
import exception.DuplicateException;

public class ProductDAO {
	
	private static ProductDAO instance = null;
	private SqlMapClient sqlMapper = null;
	
	public static ProductDAO getInstance(){
		if(instance == null)
			instance = new ProductDAO();
		return instance;
	}
	
	private ProductDAO(){
		sqlMapper = DAOParser.getParser();
	}
	
	
	public void insert(Product product) throws DuplicateException{
		if(isExist(product.getpCode())) throw new DuplicateException();
		try {
			sqlMapper.insert("insertProduct", product);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void update(Product product){
		try {
			sqlMapper.update("updateProduct", product);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void delete(int pCode){
		try {
			sqlMapper.delete("deleteProduct", pCode);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public ArrayList<Product> getProducts(){
		ArrayList<Product> productList = new ArrayList<Product>();
		
		try {
			productList = (ArrayList<Product>)sqlMapper.queryForList("getProducts");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return productList;
	}
	
	public Product getProductByCode(int pCode){
		Product product = null;
		
		try {
			product = (Product)sqlMapper.queryForObject("getProductByCode", pCode);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return product;
	}
	
	public void updateStock(int pCode, int amount){
		try {
			sqlMapper.insert("updateStock", new Product(pCode, null, 0, amount, null));
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void updateRelease(int pCode, int amount) {
		try {
			sqlMapper.insert("updateRelease", new Product(pCode, null, 0, amount, null));
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	private boolean isExist(int pCode){
		boolean flag = false;
		
		try {
			if(sqlMapper.queryForObject("isExist", pCode) != null) flag = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return flag;
	}


}
