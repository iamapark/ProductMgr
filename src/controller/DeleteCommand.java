package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Product;

import service.ProductServiceImpl;

public class DeleteCommand extends Command {

	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		String nextPage = null;
		
		int pCode = Integer.parseInt(request.getParameter("pCode"));
		
		new ProductServiceImpl().delete(pCode);
		request.setAttribute("productList", new ProductServiceImpl().getProducts());
		nextPage = "list.jsp";
		
		return nextPage;
	}

}
