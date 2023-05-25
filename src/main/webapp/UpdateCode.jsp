<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<% 
String name=request.getParameter("uname");
String password=request.getParameter("psw");
String email=request.getParameter("mail");
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bdb", "bdb");
	PreparedStatement ps=con.prepareStatement("update user1 set password=?,email=? where name=?");
	ps.setString(1,password);
	ps.setString(2,email);
	ps.setString(3,name);
	
	int i=ps.executeUpdate();
	out.print(i+"Record updated successfully.....");
	con.close();

}
catch(Exception ex)
{
	out.print(ex);
}

%>