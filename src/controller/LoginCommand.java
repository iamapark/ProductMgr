package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.LoginServiceImpl;
import dto.Login;

public class LoginCommand extends Command {

	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		String nextPage = null;
		String userId = request.getParameter("user");
		String password = request.getParameter("password");
		boolean result = false;
		
		result = new LoginServiceImpl().loginCheck(new Login(userId, password));
		
		if(result){
			nextPage = "result.jsp";
			request.setAttribute("msg", userId + " : 로그인 성공!!");
			HttpSession session = request.getSession();
			session.setAttribute("MEMBERID", userId);
		}else{
			nextPage = "error.jsp";
			request.setAttribute("msg", "로그인 실패입니다. 아이디와 비밀번호를 확인하세요.");
		}
		System.out.println("LoginCommand-nextPage : " + nextPage);
		return nextPage;
	}

}
