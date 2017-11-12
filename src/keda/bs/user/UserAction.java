package keda.bs.user;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import keda.bs.bean.User;
import keda.bs.service.UserService;

public class UserAction extends ActionSupport {
	//��װ����
	private User user;
	private UserService userService = new UserService();
	public void setUser(User user) {
		this.user = user;
	}
	public User getUser() {
		return user;
	}
	//ע�᷽��(�ٵģ�
	public String register() {
		System.out.println(user.getBirth());
		System.out.println(user.getUserName());
		return SUCCESS;
	}
	//��½����
	public String login(){
		try {
			User userInfo = userService.login(user);
			if(userInfo == null){
				ActionContext.getContext().getContextMap().put("message", "�û�������������");
				return "input";
			}
			//�ɹ�
			ActionContext.getContext().getSession().put("userInfo", userInfo);
			return "loginSuccess";
		} catch (Exception e) {
			return ERROR;
		}
	}
	//�б���
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
