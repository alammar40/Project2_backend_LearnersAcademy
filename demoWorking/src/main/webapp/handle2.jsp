<%@ page import="com.abrahman.learning.demoworking.DataBaseManagement" %><%--
  Created by IntelliJ IDEA.
  User: abdulrahmanalamar
  Date: 12/12/2022
  Time: 7:02 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.abrahman.learning.demoworking.DataBaseManagement" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String TeacherName = request.getParameter("TeacherName");

    DataBaseManagement DBM = new DataBaseManagement();
    DBM.addTeacher("5",TeacherName);
%>

<jsp:forward page="SuccessPage.jsp"></jsp:forward>
</body>
</html>
