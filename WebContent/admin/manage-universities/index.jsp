<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.ui.*" import="cmc.home.*" import="cmc.entity.*"%>
<%@include file="/verify-login.jsp"%>    
    <%	
    AdminUI aui = (AdminUI) session.getAttribute("UI");
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="/head.jsp"%>
<%@include file="/header.jsp"%>
<section id="content">
	<a class="add-button pane multi" href="add-university.jsp"><span>Add a new School</span></a>
	<%
	School[] listOfSchools = aui.getSchoolList();
	for (School s : listOfSchools) { 
		String[] emphases = s.getEmphases(); %>
	<div class="pane multi">
		<div class="name-bar"><%=s.getName()%></div>
		<div class="inner-content">
			<dl>
				<dt>State:</dt>
					<dd><%=s.getState()%></dd><br>
				<dt>Location:</dt>
					<dd><%=s.getLocation()%></dd><br>
				<dt>Control:</dt>
					<dd><%=s.getControl()%></dd><br>
				<dt>Number of Students:</dt>
					<dd><%=s.getNumStudentsEnrolled()%></dd><br>
				<dt>% Female Students:</dt>
					<dd><%=s.getPercentFemEnrolled()%></dd><br>
				<dt>SAT Verbal:</dt>
					<dd><%=s.getSatVerb()%></dd><br>
				<dt>SAT Math:</dt>
					<dd><%=s.getSatMath()%></dd><br>
				<dt>Expenses:</dt>
					<dd><%=s.getTuition()%></dd><br>
				<dt>% Financial Aid:</dt>
					<dd><%=s.getPercFinAid()%></dd><br>
				<dt>Number of Applicants:</dt>
					<dd><%=s.getNumApplications()%></dd><br>
				<dt>% Admitted:</dt>
					<dd><%=s.getAdmitRate()%></dd><br>
				<dt>% Enrolled:</dt>
					<dd><%=s.getDecideRate()%></dd><br>
				<dt>Academics (1-5):</dt>
					<dd><%=s.getAcademics()%></dd><br>
				<dt>Social Life (1-5):</dt>
					<dd><%=s.getSocialLife()%></dd><br>
				<dt>Quality of Life (1-5):</dt>
					<dd><%=s.getQualityLife()%></dd><br>
				<dt>Emphases:</dt>
				<%if (emphases.length==0) { %>
				  	<dd>None</dd><br>
				<%}
				else { 
					for(String em : emphases) { %>
					<dd><%=em%></dd><br>
				<%	}
				} %>
				<form method="post" action="edit-university.jsp">
					<input type="hidden" name="school" value="<%=s.getName()%>">
					<input value="Edit" type="submit">
				</form>
			</dl>
		</div>
	</div>
	<% } %>
</section>
</html>