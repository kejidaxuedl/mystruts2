package keda.bs.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import keda.bs.bean.User;
import keda.bs.util.JdbcUtils;

public class UserDao {
	public User login(User user){
		String sql = "select * from user where userName=? and pwd=?";
		try {
			return JdbcUtils.getQueryRunner().
					query(
					sql, 
					new BeanHandler<User>(User.class),
					user.getUserName(),
					user.getPwd()
					);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public List<User> getAll(){
		String sql = "select * from user";
		try {
			return JdbcUtils.getQueryRunner().
					query(
					sql, 
					new BeanListHandler<User>(User.class)
					);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
