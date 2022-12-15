<%--
  Created by IntelliJ IDEA.
  User: abdulrahmanalamar
  Date: 10/12/2022
  Time: 11:13 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ page import="com.abrahman.learning.demoworking.DataBaseManagement.*"%>--%>
<%@ page import="java.util.Date" %>
<%@ page import="com.abrahman.learning.demoworking.DataBaseManagement" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>Admin</title>
    <h1><%= "Welcome Admin" %>
    </h1>
</head>
<body>
<h4> Assign classes and subjects</h4>

<form action = "handle.jsp">
<select name = "TeacherChoice">
    <option>Choose Teacher name</option>
    <%
        //String TeacherChoice = request.getParameter("TeacherChoice");
        response.setContentType("text/html");
        DataBaseManagement DBM = new DataBaseManagement();
        // initializing the drivers and whatnot for the database
        DBM.init();
        ArrayList<String> teachers = new ArrayList<String>();
        teachers = DBM.Teachers();
        for(String Teacher: teachers){
            out.print("<option>" + Teacher + "</option>");
        }
    %>
</select>
<%--<select name = "StudentChoice">--%>
<%--    <option> Choose Student name<option>--%>
<%--    <%--%>
<%--    response.setContentType("text/html");--%>
<%--    DataBaseManagement DBM1 = new DataBaseManagement();--%>
<%--    // initializing the drivers and whatnot for the database--%>
<%--    DBM1.init();--%>
<%--    ArrayList<String> students = new ArrayList<String>();--%>
<%--    students = DBM.Students();--%>
<%--    for(String Student: students){--%>
<%--        out.print("<option>" + Student + "</option>");--%>
<%--    }--%>
<%--    %>--%>
<%--</select>--%>

<select name = "SubjectChoice">
    <option> Choose Subject<option>
    <%
    response.setContentType("text/html");
    DataBaseManagement DBM1 = new DataBaseManagement();
    // initializing the drivers and whatnot for the database
    DBM1.init();
    ArrayList<String> subjects = new ArrayList<String>();
    subjects = DBM1.Subjects();
    for(String subject: subjects){
        out.print("<option>" + subject + "</option>");
    }
    %>
</select>

<select name = "ClassChoice">
    <option> Choose Class<option>
    <%
    response.setContentType("text/html");
    DataBaseManagement DBM2 = new DataBaseManagement();
    // initializing the drivers and whatnot for the database
    DBM2.init();
    ArrayList<String> classes = new ArrayList<String>();
    classes = DBM2.Classes();
    for(String class_: classes){
        out.print("<option>" + class_ + "</option>");
    }
    %>
</select>
<input type="submit">
    <div style="color: green">
        <%
        if(request.getParameter("message") != null){
            out.println("<br>"+request.getParameter("message"));
        }
        %>
    </div>

</form>

<hr/>
<h4>Insert new entries to database</h4>
<form action = "handle1.jsp">
    <input type="text"name = "StudentName" placeholder = "Student name">
    <input type="submit" value="Save"></input>
</form>
<br>

<form action = "handle2.jsp">
    <input type="text"name = "TeacherName" placeholder = "Teacher name">
    <input type="submit"value="Save"></input>
</form>

<br>

<form action = "handle3.jsp">
    <input type="text"name = "ClassNumber" placeholder = "Class number">
    <input type="submit"value="Save"></input>
</form>
<hr/>

<h4>click on any of the buttons to view database entries</h4>
<table cellspacing="1" cellpadding="0" width="1318" bgcolor="white">
    <tr>
        <td width="200" bgcolor="white">
            <form action="display1.jsp">
                <input type ="submit" value = "Display Students"></input>
            </form>
        </td>
        <td width="200" bgcolor="white">
            <form action="display2.jsp">
                <input type ="submit" value = "Display Teachers"></input>
            </form>
        </td>
        <td width="200" bgcolor="white">
            <form action="display3.jsp">
                <input type ="submit" value = "Display Classes"></input>
            </form>
        </td>
    </tr>
</table>

<hr/>
<h4>Choose one class to view all the class details</h4>

<form action = "display4.jsp">
<select name = "ClassChoice2">
    <option> Choose Class<option>
        <%
    response.setContentType("text/html");
    DataBaseManagement DBM3 = new DataBaseManagement();
    // initializing the drivers and whatnot for the database
    DBM3.init();
    ArrayList<String> classes2 = new ArrayList<String>();
    classes2 = DBM3.Classes();
    for(String class_2: classes2){
        out.print("<option>" + class_2 + "</option>");
    }
    %>
</select>
<input type="submit">
</form>

</body>
</html>
