<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Welcome to learning academy portal" %>
</h1>
<h4> Please enter login credentials</h4>
<form action ="SuccessPage.jsp">
    <input type="text"name = "userName" placeholder = "Your name"><br>
    <input type="text"password = "userPass" placeholder = "Your password"><br>
</br>
    <input type="submit"value="LOGIN"></input>
</form>
<br/>
<%--<a href="hello-servlet">Hello Servlet</a>--%>
</body>
</html>