package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ProductServiceImpl;
import dto.Product;

public class ListCommand extends Command {

	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<Product> productList = new ProductServiceImpl().getProducts();
		request.setAttribute("productList", productList);

		return "list.jsp";
	}

}
