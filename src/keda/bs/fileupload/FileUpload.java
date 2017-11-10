package keda.bs.fileupload;

import java.io.File;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class FileUpload extends ActionSupport{
	private File file1;
	private String file1FileName;
	private String file1ContentType;
	public File getFile1() {
		return file1;
	}
	public void setFile1(File file1) {
		this.file1 = file1;
	}
	public String getFile1FileName() {
		return file1FileName;
	}
	public void setFile1FileName(String file1FileName) {
		this.file1FileName = file1FileName;
	}
	public String getFile1ContentType() {
		return file1ContentType;
	}
	public void setFile1ContentType(String file1ContentType) {
		this.file1ContentType = file1ContentType;
	}
	@Override
	public String execute() throws Exception {
		//上传的路径
		String path = ServletActionContext.getServletContext().getRealPath("/toupload");
		//创建目标文件对象
		File file = new File(path,file1FileName);
		//把上传的文件拷贝到目标文件
		FileUtils.copyFile(file1, file);
		return SUCCESS;
	}
}
