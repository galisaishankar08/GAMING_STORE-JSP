<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>

<%
String url= "jdbc:mysql://localhost:3306/gaming_store";
String user = "root";
String password = "2010030054";

String uname=request.getParameter("uname");
String pwd=request.getParameter("pwd");

session.setAttribute("username", uname);

String sql = "select * from Login where username='"+uname+"' and password='"+pwd+"';";

Connection con = DriverManager.getConnection(url,user,password);

Statement st= con.createStatement();
ResultSet rs=st.executeQuery(sql);
try{
rs.next();
if(rs.getString(3).equals(pwd)&&rs.getString(2).equals(uname))
{
	response.sendRedirect("Home.html");
}
else{
out.println("Invalid password or username.");
}
}
catch (Exception e) {
e.printStackTrace();
response.sendRedirect("Login.html");
}

%>

</body>
</html>