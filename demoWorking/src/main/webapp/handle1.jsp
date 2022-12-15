<%--
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
    <title>Add student</title>
</head>
<body>
<%
    String StudentName = request.getParameter("StudentName");
    DataBaseManagement DBM = new DataBaseManagement();
    DBM.addStudent("6",StudentName);
%>

<jsp:forward page="SuccessPage.jsp"></jsp:forward>
</body>
</html>
