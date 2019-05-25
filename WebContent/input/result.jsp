<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% int id=0;
if(request.getParameter("id")!=null)
{
	id = Integer.parseInt(request.getParameter("id"));
} 
System.out.println("search id = "+id);

if(id==0){%>

<form action="${pageContext.request.contextPath }/divide" method="post">

<table  border="1">
<tr>
	<th>stuno</th>
	<th>stuname</th>
	<th>stuage</th>
	<th>stusex</th>
	<th>stuclass</th>
	</tr>
</tr>
<tr>
<c:forEach var="list" items="${requestScope.list}" varStatus="status" >
<tr>
    <td>${list.stuno}</td>
    <td>${list.stuname}</td>
    <td>${list.stuage}</td>
    <td>${list.stusex}</td>
    <td>${list.stuclass}</td>
   </tr>
</c:forEach>
</tr>
</table>

<input type="submit" value="返回">

</form>
<%}

else if(id==1)
{
%>
<form action="${pageContext.request.contextPath }/yk" method="post">

<table  border="1">
<tr>
	<th>stuno</th>
	<th>stuname</th>
	<th>stuage</th>
	<th>stusex</th>
	<th>stuclass</th>
	</tr>
</tr>
<tr>
<c:forEach var="list" items="${requestScope.list}" varStatus="status" >
<tr>
    <td>${list.stuno}</td>
    <td>${list.stuname}</td>
    <td>${list.stuage}</td>
    <td>${list.stusex}</td>
    <td>${list.stuclass}</td>
   </tr>
</c:forEach>
</tr>
</table>

<input type="submit" value="返回">

</form>
<%} %>


</body>
</html>