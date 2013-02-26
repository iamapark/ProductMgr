package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ProductServiceImpl;

public class StockCommand extends Command {

	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		int pCode = Integer.parseInt(request.getParameter("pCode"));
		int amount = Integer.parseInt(request.getParameter("amount"));
		
		new ProductServiceImpl().updateStock(pCode, amount);
		request.setAttribute("productList", new ProductServiceImpl().getProducts());
		
		return "list.jsp";
	}

}
