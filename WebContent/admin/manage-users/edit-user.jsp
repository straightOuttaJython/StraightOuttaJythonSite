<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="cmc.ui.*" import="cmc.home.*" import= "cmc.entity.*"%>
<%@include file="/verify-login.jsp"%>	
<%
	AdminUI aui = (AdminUI)session.getAttribute("UI");
	String username = request.getParameter("Username");
	Person p = aui.getPerson(username);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="/head.jsp"%>
<%@include file="/header.jsp"%>
<section id="content">
	<div class="pane single">
		<div class="name-bar">
			<span><%="Edit user for "+p.getFirstName()+" "+p.getPassword()%></span>
		</div>
		<div class="inner-content">
			<p><%
				String error = request.getParameter("Error");
				if(error!=null && error.equals("1")) {
					out.println("Please do not leave anything blank!");
				}
			%></p>
			<form method="post" action="edit-user-action.jsp">
				<dl>
					<dt>First Name:</dt>
						<dd><input name="FirstName" value="<%=p.getFirstName()%>"></dd><br>
					<dt>Last Name:</dt>
						<dd><input name="LastName" value="<%=p.getLastName()%>"></dd><br>
					<dt>Username:</dt>
						<dd><input name="Username" value="<%=p.getUsername()%>" readonly></dd><br>
					<dt>Password:</dt>
						<dd><input name="Password" value="<%=p.getPassword()%>"></dd><br>
					<dt>Type:</dt>
						<dd><input type="radio" name="Type" value="u" <%=p.getType()=='u' ? "checked" : ""%>> User&nbsp;
							<input type="radio" name="Type" value="a" <%=p.getType()=='a' ? "checked" : ""%>> Admin</dd><br>
					<dt>Status:</dt>
						<dd><input type="checkbox" name="Status" value="Y" <%=p.getStatus()=='Y' ? "checked" : ""%>> Active
							<input type="hidden" name="Status" value="N"></dd><br>
				</dl>
				<input value="Save User" type="submit"><br>
				<input value="Reset" type="reset">
			</form>
		</div>
	</div>
</section>
</body>
</html>