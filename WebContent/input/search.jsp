<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="${pageContext.request.contextPath }/search?choose=<%=Integer.parseInt(request.getParameter("choose")) %>&id=<%=Integer.parseInt(request.getParameter("id"))%>" method="post">

<%  
	int id = Integer.parseInt(request.getParameter("id"));
	int choose = Integer.parseInt(request.getParameter("choose"));
	switch(choose)
	{
	case 1:
		%>
		学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：<input type="text" name="stuno" /><br><%
		break;
	case 2:
		%>
		姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：<input type="text" name="stuname" /><br><% 
		break;
	case 3:
		%>
		学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：<input type="text" name="stuno" /><br><%
		break;
	case 4:
		%>
		姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：<input type="text" name="stuname" /><br><%
		break;
	}
%>
<input type="submit" value="search">

</form>

</body>
</html>