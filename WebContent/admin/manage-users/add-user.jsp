<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="cmc.ui.*" import="cmc.home.*" import= "cmc.entity.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="/head.jsp"%>
<%@include file="/header.jsp"%>
<section id="content">
	<div class="pane single">
		<div class="name-bar">
			<span>Add New User:</span>
		</div>
		<div class="inner-content"> 
			<form method="post" action="add-user-action.jsp">
				<dl>
					<dt>First Name:</dt>
						<dd><input name="FirstName"></dd><br>
					<dt>Last Name:</dt>
						<dd><input name="LastName"></dd><br>
					<dt>Username:</dt>
						<dd><input name="Username"></dd><br>
					<dt>Password:</dt>
						<dd><input name="Password"></dd><br>
					<dt>Type:</dt>
						<dd><input type="radio" name="Type" value="u"> User&nbsp;
							<input type="radio" name="Type" value="a"> Admin</dd><br>
					<dt>Status:</dt>
						<dd><input type="checkbox" name="Status" value="Y" checked> Active
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