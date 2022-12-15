<%--
  Created by IntelliJ IDEA.
  User: abdulrahmanalamar
  Date: 12/12/2022
  Time: 8:34 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.abrahman.learning.demoworking.DataBaseManagement" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>Students</title>
</head>
<body>
<h4> Student names listed below: </h4>
<%
    DataBaseManagement DBM = new DataBaseManagement();

    ArrayList<String> Student = new ArrayList<String>();
    Student = DBM.Students();

    for(String student: Student){
      out.println(student);
      out.print("<br>");
    }
%>
<br>
<a href="javascript:history.back()">Go Back</a>
</body>
</html>
