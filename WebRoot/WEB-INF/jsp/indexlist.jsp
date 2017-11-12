<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>欢迎你，${userInfo.userName }</h1>
<table align="center" border="1">
	<tr>
		<td>序号</td>
		<td>编号</td>
		<td>用户名</td>
	</tr>
	<%@taglib uri="/struts-tags" prefix="kedabs" %>
	<kedabs:iterator var="user"  value="#request.userList"  status="vs">
		<tr>
			<td>
				<kedabs:property value = "#vs.count"></kedabs:property></td>
			<td>
				<kedabs:property value = "#user.id"></kedabs:property></td>
			</td>
			<td>
		    	<kedabs:property value = "#user.userName"></kedabs:property></td>
		    </td>
		</tr>
	</kedabs:iterator>
</table>
</body>
</html>