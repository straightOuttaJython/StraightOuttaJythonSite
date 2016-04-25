<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.ui.*" import="cmc.entity.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="head-and-header.html" %>
<%
	String myErrors = request.getParameter("Error");
	if (myErrors!=null && myErrors.equals("type"))
		out.println("Type should be only either 'a' or 'u'!");
	else if(myErrors!=null && myErrors.equals("type")){
		out.println("Invalid User");
	}
%>
 
<form method="post" action="profile-edit-action.jsp">
	First Name <input name="FirstName"><br>
	Last Name <input name="LastName"><br>
	Username <input name="Username"><br>
	Password <input name="Password"><br>
	Type <input name="Type"><br>
	<input value="Edit User" type="submit"> 
    <input value="Reset" type="reset"><br>
</form>
</body>
</html>