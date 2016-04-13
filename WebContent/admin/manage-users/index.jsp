<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="cmc.ui.*" import="cmc.home.*" import= "cmc.entity.*"%>
	
<%	
	AdminUI aUI = new AdminUI();
	PersonHome ph = new PersonHome();
	Person p = new Person();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MANAGE USERS</title>
</head>
<body>
	<table style="text-align: left; width: 266px; height: 228px;" border="1" cellpadding="2" cellspacing="2">
		<tbody>
			<tr>
				<td>
					<FORM METHOD="LINK" ACTION="add-user.jsp">
						<input value="Add User" name="Add User" type="submit">
					</FORM>
				</td>
			</tr>
			<tr>
				<td>
				
				</td>
				<td>
				First Name
				</td>
				<td>
				Last Name
				</td>
				<td>
				Username
				</td>
				<td>
				Password
				</td>
				<td>
				Type
				</td>
				<td>
				Status
				</td>
				<td>
				
				</td>
			</tr>
			
			<%
			for(int i = 0; i < ph.getAllUsers().length; i++)
			{
				p = ph.getAllUsers()[i];
				out.print("<tr>");
					out.print("<td>");
						out.print("<input value=\"Deactivate\" name=\"Deactivate\" type=\"submit\">");
					out.print("</td>");
					
					out.print("<td>");
						out.print(ph.getAllUsers()[i].getFirstName());	
					out.print("</td>");
					
					out.print("<td>");
						out.print(ph.getAllUsers()[i].getLastName());
					out.print("</td>");
					
					out.print("<td>");
						out.print(ph.getAllUsers()[i].getUsername());
					out.print("</td>");
					
					out.print("<td>");
						out.print(ph.getAllUsers()[i].getPassword());
					out.print("</td>");
					
					out.print("<td>");
						out.print(ph.getAllUsers()[i].getType());
					out.print("</td>");
					
					out.print("<td>");
						out.print(ph.getAllUsers()[i].getStatus());
					out.print("</td>");
					
					out.print("<td>");
						out.print("<FORM METHOD=\"LINK\" ACTION=\"edit-user.jsp\">");
						out.print("<input value=\"Edit User\" name=\"Edit User\" type=\"submit\">");
						%>
						<input name="Username" value="<%=ph.getAllUsers()[i].getUsername() %>" type="hidden">
						<%
						session.setAttribute("PersonHome", ph);
						out.print("</FORM>");
					out.print("</td>");
					
				out.print("</tr>");
			}
			%>
		<tbody>
	</tbody>
</body>
</html>