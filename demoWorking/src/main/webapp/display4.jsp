<%--
  Created by IntelliJ IDEA.
  User: abdulrahmanalamar
  Date: 14/12/2022
  Time: 8:00 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.abrahman.learning.demoworking.DataBaseManagement" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.ResultSet" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h4> Class details listed below: </h4>
<%
    String ClassChoice2 = request.getParameter("ClassChoice2");
    DataBaseManagement DBM = new DataBaseManagement();

    DBM.SubjectsClasses(ClassChoice2, request);
    ResultSet resultSet = (ResultSet) request.getAttribute("class");
    ResultSet resultSet2= (ResultSet) request.getAttribute("student");

    out.println("SubjectID  ClassID  TeacherID");
    out.print("<br>");
    while(resultSet.next()){
        out.println(resultSet.getString("SubjectID")+"&nbsp;&nbsp;&nbsp;"+resultSet.getString("ClassID")+"&nbsp;&nbsp;&nbsp;&nbsp;"+resultSet.getString("TeacherID"));
//        out.println(resultSet.getString("ClassID"));
//        out.println(resultSet.getString("TeacherID"));
        out.print("<br>");
    }
    out.print("<br><br>");
    out.print("<h4> Students in class listed below: </h4>");
    while(resultSet2.next()){
        out.println(resultSet2.getString(("StudentName")));
        out.print("<br>");
    }


%>
<br>
<a href="javascript:history.back()">Go Back</a>
</body>
</html>
