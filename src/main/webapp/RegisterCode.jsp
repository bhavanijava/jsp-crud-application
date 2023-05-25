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
	PreparedStatement ps=con.prepareStatement("insert into user1 values(?,?,?)");
	ps.setString(1,name);
	ps.setString(2,password);
	ps.setString(3,email);
	int i=ps.executeUpdate();
	if(i>=1)
	{
		response.sendRedirect("sucess.jsp");
		
	}
	else{
		out.print("Your Registeration not complete");
	}
	con.close();

}
catch(Exception e){
out.print(e);	
}

%>

