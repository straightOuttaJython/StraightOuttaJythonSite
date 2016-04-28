<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.ui.*" import="cmc.home.*" import="cmc.entity.*"%>
<%@include file="/verify-login.jsp"%>
<%	
	UserUI ui = (UserUI) session.getAttribute("UI");
	String[] schools = ui.manageSchools();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="/head.jsp"%>
<%@include file="/header.jsp"%>
<section id="content">
	<%	if (schools!=null) {
    	for (String schoolName : schools) { 
    	School school = ui.getSchool(schoolName); %>
	<div class="pane multi">
		<div class="name-bar"><%=school.getName()%></div>
		<div class="inner-content">
			<dl>
				<dt>State</dt>
							<dd><%=school.getState()%></dd><br>
				<dt>Location</dt>
							<dd><%=school.getLocation()%></dd><br>
				<dt>Control</dt>
								<dd><%=school.getControl()%></dd><br>
				<dt>Number of Students</dt>
								<dd><%=school.getNumStudentsEnrolled()%></dd><br>
				<form method="post" action="remove-school-action.jsp">
					<input type="hidden" name="school" value="<%=schoolName%>">
					<input value="Remove" type="submit"> 
				</form>
				<form action="../view-school.jsp">
					<input type="hidden" name="school" value="<%=school.getName()%>"></input>
					<input type="submit" value="View"></input>
				</form>
			</dl>
		</div>
	</div>
	<% }
	} %>
</section>