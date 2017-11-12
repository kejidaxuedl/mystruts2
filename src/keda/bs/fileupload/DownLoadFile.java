package keda.bs.fileupload;

import java.io.File;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class DownLoadFile extends ActionSupport {
	public String list() throws Exception {
		// 获取文件目录
		String path = ServletActionContext.getServletContext().getRealPath("/toupload");
		// 得到文件名
		File file = new File(path);
		String[] list = file.list();
		// 保存
		ActionContext ac = ActionContext.getContext();
		Map<String, Object> request = ac.getContextMap();
		request.put("list", list);
		return "list";
	}

	private String fileName;
	
	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String download() {
		return "download";
	}

	// 返回流
	public InputStream getInputStream() {
		return ServletActionContext.getServletContext().getResourceAsStream("/toupload/"+fileName);
	}
	//浏览器显示的文件名
	public String getDownFileName(){
		try {
			fileName = URLEncoder.encode(fileName, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			throw new RuntimeException(e);
		}
		return fileName;
	}
}
