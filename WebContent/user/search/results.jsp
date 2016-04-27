<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cmc.entity.*" %>
<%@include file="/verify-login.jsp"%>
<html>
<%@include file="/head.jsp"%>
<%@include file="/header.jsp"%>
<section id="content">
<%
	School[] schools = (School[]) session.getAttribute("SearchResults");
	for(int i = 0; i<schools.length;i++) {
		School school = schools[i];
%>
	<div class="pane multi">
		<div class="name-bar"><%=school.getName()%></div>
		<div class="inner-content">
			<dl>
				<dt>State</dt>
							<dd><%=school.getState()%></dd>
				<dt>Location</dt>
							<dd><%=school.getLocation()%></dd>
				<dt>Control</dt>
								<dd><%=school.getControl()%></dd>
				<dt>Number of Students</dt>
								<dd><%=school.getNumStudentsEnrolled()%></dd>
				<form action="save-school-action.jsp">
					<input type="hidden" name="school" value="<%=school.getName()%>"></input>
					<input type="submit" value="Save"></input>
				</form>
				<form action="../view-school.jsp">
					<input type="hidden" name="school" value="<%=school.getName()%>"></input>
					<input type="submit" value="View"></input>
				</form>
			</dl>
		</div>
	</div>
		<%
	}
%>
</section>
</body>
</html>