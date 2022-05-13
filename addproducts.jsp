<%@page import="java.sql.*"%>
<%
	
	
	int count=0;
	String pcat=request.getParameter("pcat");
	String pcompany=request.getParameter("pcompany");
	String pmodel=request.getParameter("pmodel");
	String price=request.getParameter("price");
	String features=request.getParameter("features");
	
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshop","root","root");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select count(*) from addproducts where pcat='"+pcat+"'and pcompany='"+pcompany+"' and pmodel='"+pmodel+"' and price='"+price+"'");
	if(rs.next())
	{
	 count=rs.getInt(1);
	 if(count==0)
	{
		int i=st.executeUpdate("insert into addproducts values('"+pcat+"','"+pcompany+"','"+pmodel+"','"+price+"','"+features+"')");
		
		
		if(i==0)
		{
		response.sendRedirect("admin.jsp?msg=failure");
		}
		else
		{
		response.sendRedirect("admin.jsp?msg= Product Details Inserted Sucessfully");
		}
	}
	else
	{
	response.sendRedirect("admin.jsp?msg Name Already Exists For This Book ");
	}
	}
	}
	catch(Exception e)
	{
	out.println(e);
	}
%>