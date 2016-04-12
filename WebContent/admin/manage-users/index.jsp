<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="cmc.ui.*" import="cmc.home.*"%>
	
<%	
	AdminUI aUI = new AdminUI();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MANAGE USERS</title>
</head>
<body>
		ERIN This is the main Manage Users page. It should be a lot like
		Manage Universities. The edit button should lead to edit-user.jsp and
		the add button should lead to add-user.jsp there's an edit button for
		every user but only one add button
	<table style="text-align: left; width: 266px; height: 228px;" border="1" cellpadding="2" cellspacing="2">
		<tbody>
			<tr>
				<td>
				<input value="Add User" name="Add User" type="submit">
				</td>
			</tr>
			<tr>
				<td>
				<input value="Deactivate" name="Deactivate" type="submit">
				</td>

				<td><input value="Edit User" name="Edit User" type="submit">
				</td>
			</tr>
		<tbody>
	</tbody>
</body>
</html>