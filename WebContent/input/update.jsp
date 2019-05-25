<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="service.*" %>
<%@page import="entities.*" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
   String str = request.getParameter("stuno");
	List<student> list = new ArrayList<student>();
	stu_service service = new stu_service();
	student s = new student();
	s.setStuno(str);
	list = service.search(1, s);
	for(int i=0;i<list.size();i++)
	{
		System.out.println(list.get(i).getStuno());
	}
%>



<form action="${pageContext.request.contextPath }/update" method="POST">
<%for(int i=0;i<list.size();i++) 
	{ 
		student stu = new student();
		stu = list.get(i);
	%>
    学号：<input type="text" name="stuno" value="<%=stu.getStuno()%>"/><br>
    学生名称：<input type="text" name="stuname" value="<%=stu.getStuname()%>"/><br>
    学生年龄：<input type="text"name="stuage" value="<%=stu.getStuage()%>"/><br>
    学生性别：<input type="text" name="stusex" value="<%=stu.getStusex()%>"/><br>
    班级：<input type="text" name="stuclass" value="<%=stu.getStuclass()%>"/><br>
<%
} 
%>
    <input type="hidden" name="action" value="add"/>
    <input type="submit" name="commit" value="更新" />
</form>

</body>
</html>