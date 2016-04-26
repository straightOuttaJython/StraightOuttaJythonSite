<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="cmc.ui.*" import="cmc.home.*" import= "cmc.entity.*"%>
	
<%	
	AdminUI aUI = (AdminUI) session.getAttribute("UI");
	PersonHome ph = new PersonHome();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="/head.jsp"%>
<%@include file="/header.jsp"%>
<section id="content">
	<a class="add-button pane multi" href="add-user.jsp"><span>Add a new User</span></a>
	<%
	Person[] listOfPeople = ph.getAllUsers();
	for (Person p : listOfPeople) { %>
	<div class="pane multi">
		<div class="name-bar"><%=p.getFirstName()+" "+p.getLastName()%></div>
		<div class="inner-content">
			<dl>
				<dt>First Name</dt>
							<dd><%=p.getFirstName()%></dd>
				<dt>Last Name</dt>
							<dd><%=p.getLastName()%></dd>
				<dt>Username</dt>
							<dd><%=p.getUsername()%></dd>
				<dt>Password</dt>
							<dd><%=p.getPassword()%></dd>
				<dt>Type</dt>
							<dd><%=p.getType()=='u' ? "User" : "Admin"%></dd>
				<dt>Status</dt>
							<dd><%=p.getStatus()=='y' ? "Active" : "Inactive"%></dd>
				<form method="post" action="edit-user.jsp">
					<input type="hidden" name="Username" value="<%=p.getUsername()%>">
					<input value="Edit" type="submit">
				</form>
				<form action="deactivate-user-action.jsp">
					<input type="hidden" name="Username" value="<%=p.getUsername()%>">
					<input value="Deactivate" type="submit">
				</form>
			</dl>
		</div>
	</div>
	<% } %>
</section>
</html>