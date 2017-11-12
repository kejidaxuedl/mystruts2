package keda.bs.interceptor;

import org.apache.commons.lang3.StringUtils;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionProxy;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class UserInterceptor extends AbstractInterceptor{
	//拦截器登陆验证
	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		//判断方法名是否为login
		ActionContext ac = invocation.getInvocationContext();
		//action的代理
		ActionProxy proxy = invocation.getProxy();
		//获取当前执行的方法名
		String methodName = proxy.getMethod();
		if(!StringUtils.equals("login", methodName)){
			//先获取当前登陆用户
			Object obj = ac.getSession().get("userInfo");
			if(obj == null){
				//没有登陆
				ActionContext.getContext().getContextMap().put("message", "请先登陆");
				return "input";
			}else{
				return invocation.invoke();
			}
		}else{
			//正在登陆
			return invocation.invoke();
		}
	}
}
