<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.*" %>
<%
String user=request.getParameter("userid");
session.putValue("userid",user);
String pwd=request.getParameter("pwd");
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/edubridge","root","Nupur");
Statement stmt = con.createStatement();
ResultSet rs;
int i=stmt.executeUpdate("insert into  users values ('"+user+"','"+pwd+"','"+fname+"','"+lname+"','"+email+"')");

out.println("Registered");

%>
<a href="Login.html">Login</a>
<a href="index.html">Logout</a>
</body>
</html>