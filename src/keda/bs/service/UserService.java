package keda.bs.service;

import java.util.List;

import keda.bs.bean.User;
import keda.bs.dao.UserDao;

public class UserService {
	private UserDao userDao = new UserDao();
	public User login(User user){
		try {
			return userDao.login(user);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	public List<User> getAll(){
		try {
			return userDao.getAll();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
}
