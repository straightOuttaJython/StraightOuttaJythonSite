<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.ui.*" import="cmc.entity.*"%>
<%@include file="/verify-login.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="/head.jsp"%>
<%@include file="/header.jsp"%>
<%
	UserUI ui = (UserUI) session.getAttribute("UI");
	Person user = ui.getUser();
%>
	<section id="content">
		<div class="pane single">
			<div class="name-bar">
				<span>Manage User Profile</span>
			</div>
			<div class="inner-content">
				<p><%
					String error = request.getParameter("Error");
					if (error!=null && error.equals("-1"))
						out.println("Please do not leave any fields blank.");
					else if(error!=null && error.equals("-2"))
						out.println("Illegal Type or Status");
				%></p> 
				<form method="post" action="profile-edit-action.jsp">
					<dl>
						<dt>First Name:</dt>
							<dd><input name="FirstName" value="<%=user.getFirstName()%>"></dd><br>
						<dt>Last Name:</dt>
							<dd><input name="LastName" value="<%=user.getLastName()%>"></dd><br>
						<dt>Username:</dt>
							<dd><input name="Username" value="<%=user.getUsername()%>" readonly></dd><br>
						<dt>Password:</dt>
							<dd><input name="Password" value="<%=user.getPassword()%>"></dd><br>
						<dt>Type:</dt>
							<dd><input name="Type" value="<%=user.getType()=='a' ? "Admin" : "User" %>" readonly></dd>
					</dl>
						<input value="Edit User" type="submit"><br> 
					    <input value="Reset" type="reset">
				</form>
			</div>
		</div>
	</section>
</body>
</html>