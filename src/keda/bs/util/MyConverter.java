package keda.bs.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Map;

import org.apache.struts2.util.StrutsTypeConverter;

//自定义类型转换器
public class MyConverter extends StrutsTypeConverter{
	
	@Override
	public Object convertFromString(Map arg0, String[] arg1, Class arg2) {
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
		try {
			return format.parse(arg1[0]);
		} catch (ParseException e) {
			throw new RuntimeException(e);
		}
	}

	@Override
	public String convertToString(Map arg0, Object arg1) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
