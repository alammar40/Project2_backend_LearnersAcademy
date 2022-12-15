<%--
  Created by IntelliJ IDEA.
  User: abdulrahmanalamar
  Date: 11/12/2022
  Time: 11:02 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.abrahman.learning.demoworking.DataBaseManagement" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%  String TeacherChoice = request.getParameter("TeacherChoice");
    String SubjectChoice = request.getParameter("SubjectChoice");
    String ClassChoice = request.getParameter("ClassChoice");

    DataBaseManagement DBM = new DataBaseManagement();
    DBM.addSubjectsClasses(SubjectChoice,ClassChoice,TeacherChoice);
%>
<jsp:forward page="SuccessPage.jsp">
    <jsp:param name="message" value="Successfully updtaed!"/>
</jsp:forward>
</body>
</html>
