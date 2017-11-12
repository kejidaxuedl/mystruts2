package keda.bs.util;

import javax.sql.DataSource;

import org.apache.commons.dbutils.QueryRunner;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class JdbcUtils {
	//��ʼ�����ӳ�
	private static DataSource dataSource;
	static {
		dataSource = new ComboPooledDataSource();
	}
	
	public static DataSource getDataSource(){
		return dataSource;
	}
	//���������
	public static QueryRunner getQueryRunner(){
		return new QueryRunner(dataSource);
	}
}
