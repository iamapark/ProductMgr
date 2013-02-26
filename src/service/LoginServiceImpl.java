package service;

import dao.LoginDAO;
import dto.Login;

public class LoginServiceImpl implements LoginServiceIF {

	@Override
	public boolean loginCheck(Login login) {
		return LoginDAO.getInstance().loginCheck(login);
	}

}
