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
    <title>Title</title>
</head>
<body>
<h4> Class names listed below: </h4>
<%
    DataBaseManagement DBM = new DataBaseManagement();

    ArrayList<String> Class_ = new ArrayList<String>();
    Class_ = DBM.Classes();

    for(String class_: Class_){
        out.println(class_);
        out.print("<br>");
    }
%>
<br>
<a href="javascript:history.back()">Go Back</a>
</body>
</html>
