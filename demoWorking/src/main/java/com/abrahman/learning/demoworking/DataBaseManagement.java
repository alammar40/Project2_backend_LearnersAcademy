package com.abrahman.learning.demoworking;

import jakarta.servlet.http.HttpServletRequest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.Date;

public class DataBaseManagement {
    public static final String DB_URLTOCONNECT = "jdbc:mysql://localhost:3307/learning_academy";

    public static final String DB_USERNAME = "root";

    public static final String DB_PASSWORD = "";

    static private Connection dbCon;

    private static String qry;

    private static Statement theStatement;
    private static Statement theStatement2;

    private static ResultSet resultSet;

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        //	Load the driver
        Class.forName("com.mysql.cj.jdbc.Driver");
        //	Try to establish the connection
        dbCon = DriverManager.getConnection(DB_URLTOCONNECT, DB_USERNAME, DB_PASSWORD);

        //Get a reference to the Statement
        theStatement = dbCon.createStatement();
        theStatement2 = dbCon.createStatement();

        //System.out.println(Students()+"\n"+Classes()+"\n"+Teachers());

        //addSubjectsClasses("ECE101","A10","Anthony");
        //SubjectsClasses("A10");

    }
    public static void addStudent(String StudentID,String StudentName) throws SQLException {
        qry = String.format("INSERT INTO `Students`(`StudentID`, `StudentName`) VALUES ('%s','%s')",StudentID,StudentName);
        int Result_set = theStatement.executeUpdate(qry);
    }

    public static void addTeacher(String TeacherID,String TeacherName) throws SQLException {
        qry = String.format("INSERT INTO `Teachers`(`TeacherID`, `TeacherName`) VALUES ('%s','%s')",TeacherID,TeacherName);
        int Result_set = theStatement.executeUpdate(qry);
    }
    public static void addClass(String ClassID,String ClassCapacity) throws SQLException {
        qry = String.format("INSERT INTO `Classes`(`ClassID`, `ClassCapacity`) VALUES ('%s','%s')",ClassID,ClassCapacity);
        int Result_set = theStatement.executeUpdate(qry);
    }
    //addSubjectsClasses(SubjectChoice,ClassChoice,TeacherChoice)
    public static void addSubjectsClasses(String SubjectID,String ClassID,String TeacherName) throws SQLException {
        qry = String.format("INSERT INTO `SubjectsClasses`(`SubjectID`, `ClassID`, `TeacherName`) VALUES ('%s','%s','%s')",SubjectID,ClassID,TeacherName);
        int Result_set = theStatement.executeUpdate(qry);
    }
    public static ArrayList<String> Students() throws SQLException {
        ArrayList<String> Student = new ArrayList<String>();

        qry = "SELECT `StudentName` FROM `Students` WHERE 1";
        resultSet = theStatement.executeQuery(qry);
        while (resultSet.next()){
            System.out.println(resultSet.getString("StudentName"));
            Student.add(resultSet.getString("StudentName"));
        }
        System.out.println(Student);
        return Student;
    }
    public static ArrayList<String> Subjects() throws SQLException {
        ArrayList<String> Subject = new ArrayList<String>();

        qry = "SELECT `SubjectID` FROM `Subjects` WHERE 1";
        resultSet = theStatement.executeQuery(qry);
        while (resultSet.next()){
            System.out.println(resultSet.getString("SubjectID"));
            Subject.add(resultSet.getString("SubjectID"));
        }
        System.out.println(Subject);
        return Subject;
    }

    public static ArrayList<String> Teachers() throws SQLException {
        ArrayList<String> Teacher = new ArrayList<String>();

        qry = "SELECT `TeacherName` FROM `Teachers` WHERE 1";
        resultSet = theStatement.executeQuery(qry);
        while (resultSet.next()){
            //System.out.println(resultSet.getString("StudentName"));
            Teacher.add(resultSet.getString("TeacherName"));
        }
        return Teacher;
    }

    public static ArrayList<String> Classes() throws SQLException {
        ArrayList<String> Class_ = new ArrayList<String>();

        qry = "SELECT `ClassID` FROM `CLasses` WHERE 1";
        resultSet = theStatement.executeQuery(qry);
        while (resultSet.next()){
            //System.out.println(resultSet.getString("StudentName"));
            Class_.add(resultSet.getString("ClassID"));
        }
        return Class_;
    }
    public static void SubjectsClasses(String ClassID, HttpServletRequest request) throws SQLException {
        ArrayList<String> subjectsClasses = new ArrayList<String>();
        qry = String.format("SELECT * from Subjects s \n" +
                "\tINNER JOIN SubjectsClasses sc on s.SubjectID=sc.SubjectID\n" +
                "\twhere sc.ClassID='%s';",ClassID);
        resultSet = theStatement.executeQuery(qry);

        request.setAttribute("class", resultSet);

        qry = String.format("SELECT s.StudentName from Students s \n" +
                "\tINNER JOIN Classes sc on s.ClassID=sc.ClassID\n" +
                "\twhere sc.ClassID='%s';",ClassID);
        ResultSet resultSet2 = theStatement2.executeQuery(qry);

        request.setAttribute("student", resultSet2);
    }

    public static void init() throws ClassNotFoundException, SQLException {
        //	Load the driver
        Class.forName("com.mysql.cj.jdbc.Driver");
        //	Try to establish the connection
        dbCon = DriverManager.getConnection(DB_URLTOCONNECT, DB_USERNAME, DB_PASSWORD);

        //Get a reference to the Statement
        theStatement = dbCon.createStatement();
        theStatement2 = dbCon.createStatement();

    }

}
