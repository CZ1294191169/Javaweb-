<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/Stu_Class?useSSL=false&useUnicode=true&characterEncoding=utf8";
	String user = "root";
	String password = "123456";
	String sql = "select * from student";
	
	Class.forName(driver);
	Connection con = DriverManager.getConnection(url,user,password);
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
%>
	<table  border="1">
	<tr>
	<th>stuno</th>
	<th>stuname</th>
	<th>stuage</th>
	<th>stusex</th>
	<th>stuclass</th>
	<th>operation</th>
	<th>operation</th>
	</tr>
 <%
		while (rs.next()) {
%>
	<tr>
		<td><%=rs.getString("stuno")%></td>
		<td><%=rs.getString("stuname")%></td>
		<td><%=rs.getInt("stuage")%></td>
		<td><%=rs.getString("stusex")%></td>
		<td><%=rs.getInt("stuclass")%></td>
		<td>
			<a href="update.jsp?stuno=<%=rs.getString("stuno")%>&id=1">update
			</a>
		</td>
		<td>
			<a href="${pageContext.request.contextPath }/delete?stuno=<%=rs.getString("stuno")%>&id=1">delete
			</a>
		</td>
	</tr>
	<%
		}
		con.close();
	%>
	</table> 
	<p>                                      
	<form action="search.jsp" method="post">
	<input type="radio" name="choose" value="1">search by stuno
	<input type="radio" name="choose" value="2">search by stuname
	<input type="radio" name="choose" value="3">fuzzy search by stuno
	<input type="radio" name="choose" value="4">fuzzy search by stuname
	<input type="submit" value="search">
	</form>
	</p>  
	<a href="insert.jsp&id=1">append</a>
	
	
	</br>
	
	<form action="${pageContext.request.contextPath }/divide" method="post">
	
	<input type="submit" value="分页模式" >
	</form>
</body>
</html>