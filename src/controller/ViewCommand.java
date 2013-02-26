package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ProductServiceImpl;
import dto.Product;

public class ViewCommand extends Command {

	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		int pCode = Integer.parseInt(request.getParameter("pCode"));
		Product product = null;
		
		product = new ProductServiceImpl().getProductByCode(pCode);
		request.setAttribute("product", product);
		System.out.println(product);
		
		return "view.jsp";
	}
}
