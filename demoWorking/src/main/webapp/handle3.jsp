<%--
  Created by IntelliJ IDEA.
  User: abdulrahmanalamar
  Date: 12/12/2022
  Time: 7:03 am
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
    String ClassNumber = request.getParameter("ClassNumber");

    DataBaseManagement DBM = new DataBaseManagement();
    DBM.addClass("D10",ClassNumber);
%>

<jsp:forward page="SuccessPage.jsp"></jsp:forward>
</body>
</html>
