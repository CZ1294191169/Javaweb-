<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Insert title here</title>
<script type="text/javascript">

function go(){
	document.goForm.submit();
}

function doPage(p){
	document.searchForm.page.value = p;
	document.searchForm.submit();
}
</script>
<style>
table {
  margin-top:15px;
  border-collapse:collapse;
  border:1px solid #aaa;
  width:100%;
}
table th {
  vertical-align:baseline;
  padding:5px 15px 5px 6px;
  background-color:#3F3F3F;
  border:1px solid #3F3F3F;
  text-align:left;
  color:#fff;
}
table td {
  vertical-align:text-top;
  padding:6px 15px 6px 6px;
  border:1px solid #aaa;
}
table tr:nth-child(odd) {
  background-color:#F5F5F5;
}
table tr:nth-child(even) {
  background-color:#fff;
}
 body
   {
            height: 100%;
            font: 1.33em 'Roboto Condensed', arial;
            color: #090909;
            text-align: center;
            background-image: -webkit-radial-gradient(circle, #3c3b52 0%, #252233 80%);
            background-image: radial-gradient(circle, #3c3b52 0%, #252233 80%);
        }
        
       input{
            border: 1px solid #ccc;
            padding: 7px 0px;
            border-radius: 3px;
            padding-left:5px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s
        }
        input:focus{
            border-color: #66afe9;
            outline: 0;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6)
        }
        a{
            cursor:pointer;
            text-decoration:none;
            outline:none;
        }
        a:link,a:visited,a:hover,a:active{
            text-decoration:none;
            color:#090909 ;
        }

        a:focus {
            outline: 0;

        }
</style>
</head>
<body>

<form name="searchForm" action="${pageContext.request.contextPath }/divide" method="post" >
<label>${pageContext.request.contextPath }</label>
<input type="hidden" name="page" value="1" />
</form>
<table border="1">
<tr>
	<th>stuno</th>
	<th>stuname</th>
	<th>stuage</th>
	<th>stusex</th>
	<th>stuclass</th>
	<th>operation</th>
	<th>operation</th>
</tr>
<c:forEach var="student" items="${requestScope.studentlist}" varStatus="status" >
<tr>
	<td>${student.stuno }</td> 
	<td>${student.stuname}</td>
	<td>${student.stuage }</td>
	<td>${student.stusex }</td>
	<td>${student.stuclass }</td>

		<td>
			<a href="${pageContext.request.contextPath }/input/update.jsp?stuno=${student.stuno }">update
			</a>
		</td>
	
		<td>
			<a href="${pageContext.request.contextPath }/delete?stuno=${student.stuno}">delete
			</a>
		</td>
		
	
</tr>	
</c:forEach>
</table>



<table>
	<tr>
	<td>共有${requestScope.pageVO.recordCount}条记录，当前第${requestScope.pageVO.page }/${requestScope.pageVO.pageCount }页</td>
	<td>
		<table>
		<tr>
		
		<td width="45">		
			<c:choose>
				<c:when test="${1 eq requestScope.pageVO.page }">
				</c:when>
				<c:otherwise>
					<a href="javascript:doPage(1)">first</a>
				</c:otherwise>
			</c:choose>
		</td>				
		
		<td width="45">		
			<c:choose>
				<c:when test="${requestScope.pageVO.page eq 1 }">
				</c:when>
				<c:otherwise>
					<a href="javascript:doPage(${requestScope.pageVO.page - 1 })">before</a>
				</c:otherwise>
			</c:choose>
		</td>				
		
		<td width="45">		
			<c:choose>
				<c:when test="${requestScope.pageVO.page eq requestScope.pageVO.pageCount }">
				</c:when>
				<c:otherwise>
					<a href="javascript:doPage(${requestScope.pageVO.page + 1 })">next</a>
				</c:otherwise>
			</c:choose>
		</td>				
		
		<td width="45">		
			<c:choose>
				<c:when test="${requestScope.pageVO.page eq requestScope.pageVO.pageCount }">
				</c:when>
				<c:otherwise>
					<a href="javascript:doPage(${requestScope.pageVO.pageCount})">final</a>
				</c:otherwise>
			</c:choose>
		</td>				

		<td width="100">		
		<form name="goForm" action="${pageContext.request.contextPath }/divide" method="post">
			<span>到第<input name="page" type="text" size="4" style="height:18px;width:20px;border:1px solid #999999;"/>页 </span>
		</form>
		</td>				
		<td width="40">		
			<a href="javascript:go()" >
		</td>						

		</tr>
		</table>
	</td>
	</tr>
</table>
	<p>                                      
	<form action="${pageContext.request.contextPath }/input/search.jsp?id=0" method="post">
	<input type="radio" name="choose" value="1">通过学号查询
	<input type="radio" name="choose" value="2">通过姓名查询
	<input type="radio" name="choose" value="3">通过部分学号模糊查询
	<input type="radio" name="choose" value="4">通过部分姓名模糊查询
	<input type="submit" value="search">
	</form>
	
	<br>
	
	</p>  
	<a href="${pageContext.request.contextPath }/input/insert.jsp">增加学生</a>
	</br>
	
	<p>
	<a href="${pageContext.request.contextPath }/input/index.jsp">登出</a>
	
	<%-- <form action="${pageContext.request.contextPath }/input/test.jsp" method="post">
	
	<input type="submit" value="普通模式" >
	
	</form> --%>

</body>
</html>