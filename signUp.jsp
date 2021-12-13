<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp</title>
</head>
<body>
<%
String url= "jdbc:mysql://localhost:3306/gaming_store";
String user = "root";
String password = "2010030054";

String uname=request.getParameter("uname");
String pwd=request.getParameter("pwd");
String phno=request.getParameter("phno");
String email=request.getParameter("email");

String sql1 = "insert into signup(uname,phno,email,pwd) values('"+uname+"','"+phno+"','"+email+"','"+pwd+"');";
String sql2 = "insert into Login(username,password) values('"+uname+"','"+pwd+"');";

Connection con = DriverManager.getConnection(url,user,password);
try
{
Statement st= con.createStatement();
int i=st.executeUpdate(sql1);
int j=st.executeUpdate(sql2);
response.sendRedirect("Login.html");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();

}


%>
</body>
</html>