<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%
String name=request.getParameter("uname");
String password=request.getParameter("psw");

try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "bdb", "bdb");
	PreparedStatement ps=con.prepareStatement("select * from user1 where name=? and password=?");
	ps.setString(1,name);
	ps.setString(2,password);
	ResultSet rs=ps.executeQuery();
	if(rs.next())
	{
		response.sendRedirect("emphome.jsp");
	}
	else
	{
		out.print("Please Enter valid deatails");
	}
	  
	
	con.close();
	
}
catch(Exception ex)
{
	out.print(ex);
}



%>