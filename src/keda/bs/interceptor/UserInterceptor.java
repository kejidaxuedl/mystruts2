package keda.bs.interceptor;

import org.apache.commons.lang3.StringUtils;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionProxy;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class UserInterceptor extends AbstractInterceptor{
	//��������½��֤
	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		//�жϷ������Ƿ�Ϊlogin
		ActionContext ac = invocation.getInvocationContext();
		//action�Ĵ���
		ActionProxy proxy = invocation.getProxy();
		//��ȡ��ǰִ�еķ�����
		String methodName = proxy.getMethod();
		if(!StringUtils.equals("login", methodName)){
			//�Ȼ�ȡ��ǰ��½�û�
			Object obj = ac.getSession().get("userInfo");
			if(obj == null){
				//û�е�½
				ActionContext.getContext().getContextMap().put("message", "���ȵ�½");
				return "input";
			}else{
				return invocation.invoke();
			}
		}else{
			//���ڵ�½
			return invocation.invoke();
		}
	}
}
