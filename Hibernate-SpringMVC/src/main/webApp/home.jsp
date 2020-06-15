<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%--add jstl dependency first--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>菜鸟教程(runoob.com)</title>
</head>
<body>


<h1>This is JSP page</h1>
<%--//get the name from HomeController--%>
Welcome ${name}

<br/>
<%
    out.println("你的 IP 地址 " + request.getRemoteAddr());

%>
<br/>
</body>
</html>