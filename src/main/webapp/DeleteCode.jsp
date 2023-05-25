<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<% 
String name=request.getParameter("uname");
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "bdb", "bdb");
	PreparedStatement ps=con.prepareStatement("delete from user1 where name=?");
	
	ps.setString(1,name);
	
	int i=ps.executeUpdate();
	out.print(i+"Record deleted successfully.....");
	con.close();

	  
	
}
catch(Exception ex)
{
	out.print(ex);
}

%>