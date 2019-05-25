<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>delete</title>
</head>
<body>
<form action="${pageContext.request.contextPath }/delete" method="post">
    学生学号：<input type="text" name="stuno" /><br>
    <input type="submit" name="commit" value="删除" />
</form>
</body>
</html>