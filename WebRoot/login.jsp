<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><s:text name="title"></s:text></title>
</head>
<body>
<form action="${pageContext.request.contextPath }/user/user_login.kedabs">
	<s:text name="username"></s:text><input type="text" name = "user.userName"/>${message }<br>
	<s:text name="pwd"></s:text><input type="password" name = "user.pwd"/><br>
    <input type="submit" value = "<s:text name="submit"></s:text>"/> 
</form>
</body>
</html>