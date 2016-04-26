<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.ui.*" import="cmc.entity.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Manage Profile</title>
</head>
<body>
<!-- DUONG
This is the Manage Profile page.
it should direct to profile-edit-action.jsp.-->
<%
	String myErrors = request.getParameter("Error");
	if (myErrors!=null && myErrors.equals("-1"))
		out.println("UserUI was missing");
	else if(myErrors!=null && myErrors.equals("-2")){
		out.println("NullPointerException");
	}
	UserUI ui = (UserUI) session.getAttribute("UI");
	Person user = ui.getUser();
%>
 
<form method="post" action="profile-edit-action.jsp">
	First Name <input name="FirstName" value="<%=user.getFirstName()%>"><br>
	Last Name <input name="LastName" value="<%=user.getLastName()%>"><br>
	Username <input name="Username" value="<%=user.getUsername()%>" readonly><br>
	Password <input name="Password" value="<%=user.getPassword()%>"><br>
	Type <input name="Type" value="<%=user.getType()%>" readonly><br>
	<input value="Edit User" type="submit"> 
    <input value="Reset" type="reset"><br>
</form>
</body>
</html>