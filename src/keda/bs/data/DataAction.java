package keda.bs.data;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class DataAction extends ActionSupport {
	@Override
	public String execute() throws Exception {
		//通过servlet API
		/*ServletContext servletContext = ServletActionContext.getServletContext();
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		servletContext.setAttribute("application_data", "application_data");
		request.setAttribute("request_data", "request_data");
		session.setAttribute("session_data", "session_data");*/
		//使用ActionContext类
		ActionContext ac = ActionContext.getContext();
		Map<String, Object> request = ac.getContextMap();
		Map<String, Object> session = ac.getSession();
		Map<String, Object> application = ac.getApplication();
		application.put("application_data", "application_data");
		request.put("request_data", "request_data");
		session.put("session_data", "session_data");
		return SUCCESS;
	}
}
