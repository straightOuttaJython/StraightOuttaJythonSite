<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="cmc.ui.*" import="cmc.home.*" import= "cmc.entity.*"%>
	
<%PersonHome pph = new PersonHome(); 
String username = request.getParameter("Username");
Person p = (Person)pph.getPerson(username);%>
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
							<dd><input name="Type" value="<%=p.getType()%>"></dd><br>
						<dt>Status:</dt>
							<dd><input name="Status" value="<%=p.getStatus()%>"></dd><br>
					</dl>
					<input value="Edit" type="submit"><br>
					<input value="Reset" type="reset">
				</form>
			</div>
		</div>
	</section>
</body>
</html>