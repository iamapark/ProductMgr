package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ProductServiceImpl;
import dto.Product;

public class UpdateCommand extends Command {

	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		int pCode = Integer.parseInt(request.getParameter("pCode"));
		String pName = request.getParameter("pName");
		int price = Integer.parseInt(request.getParameter("price"));
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		String pDesc = request.getParameter("pDesc");
		
		new ProductServiceImpl().update(new Product(pCode, pName, price, quantity, pDesc));
		request.setAttribute("productList", new ProductServiceImpl().getProducts());
		
		return "list.jsp";
	}

}
