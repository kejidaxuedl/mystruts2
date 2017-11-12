package keda.bs.user;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import keda.bs.bean.User;
import keda.bs.service.UserService;

public class UserAction extends ActionSupport {
	//封装数据
	private User user;
	private UserService userService = new UserService();
	public void setUser(User user) {
		this.user = user;
	}
	public User getUser() {
		return user;
	}
	//注册方法(假的）
	public String register() {
		System.out.println(user.getBirth());
		System.out.println(user.getUserName());
		return SUCCESS;
	}
	//登陆方法
	public String login(){
		try {
			User userInfo = userService.login(user);
			if(userInfo == null){
				ActionContext.getContext().getContextMap().put("message", "用户名或密码有误");
				return "input";
			}
			//成功
			ActionContext.getContext().getSession().put("userInfo", userInfo);
			return "loginSuccess";
		} catch (Exception e) {
			return ERROR;
		}
	}
	//列表方法
		public String list(){
			try {
				List<User> userList = userService.getAll();
				ActionContext.getContext().getContextMap().put("userList", userList);
				return "list";
			} catch (Exception e) {
				return ERROR;
			}
	}
}
