<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>add</title>
</head>
<body>
<form action="${pageContext.request.contextPath }/insert" method="POST">
    学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：<input type="text" name="stuno" /><br>
    学生名称：<input type="text" name="stuname" /><br>
    学生年龄：<input type="text"name="stuage" /><br>
    学生性别：<input type="text" name="stusex" /><br>
    班&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;级：<input type="text" name="stuclass" /><br>
    <input type="hidden" name="action" value="add"/>
    <input type="submit" name="commit" value="提交" />
</form>


</body>
</html>