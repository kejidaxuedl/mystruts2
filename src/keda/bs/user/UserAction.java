package keda.bs.user;

import com.opensymphony.xwork2.ActionSupport;

import keda.bs.bean.User;

public class UserAction extends ActionSupport {
	//��װ����
	private User user;
	public void setUser(User user) {
		this.user = user;
	}
	public User getUser() {
		return user;
	}
	//ע�᷽��
	public String register() {
		System.out.println(user.getBirth());
		System.out.println(user.getName());
		return SUCCESS;
	}
}
