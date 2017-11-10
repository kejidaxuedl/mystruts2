package keda.bs.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.apache.struts2.util.StrutsTypeConverter;

//自定义类型转换器
public class MyConverter extends StrutsTypeConverter{
	//需求 支持的格式 yyyy-MM-dd   yyyyMMdd   yyyy年MM月dd日
	DateFormat[]  format= { 
			new SimpleDateFormat("yyyy-MM-dd"), 
			new SimpleDateFormat("yyyyMMdd"),
			new SimpleDateFormat("yyyy年MM月dd日")
	};
	@Override
	public Object convertFromString(Map arg0, String[] arg1, Class arg2) {
		if (arg1 == null || arg1.length == 0){
			return null;
		}
		if(arg2 != Date.class){
			return null;
		}
		for ( int i = 0; i<format.length; i++){
			try {
				return format[i].parse(arg1[0]);
			} catch (ParseException e) {
				continue;
			}
		}
		return null;
	}

	@Override
	public String convertToString(Map arg0, Object arg1) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
