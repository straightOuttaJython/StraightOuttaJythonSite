<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.ui.*" import="cmc.entity.*" %>
<%@include file="/verify-login.jsp"%>
<%
    AdminUI aui = (AdminUI)session.getAttribute("UI"); 
    String school = request.getParameter("school");
    School s = (School)aui.getSchool(school);
    String[] emphases = aui.getEmph(school);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="/head.jsp"%>
<%@include file="/header.jsp"%>
<section id="content">
	<div class="pane single">
		<div class="name-bar">
			<span>Editing <%=s.getName() %></span>
		</div>
		<div class="inner-content">
			<p><%
				String error = request.getParameter("Error");
				if(error!=null) {
					if (error.equals("1"))
						out.println("No field may be blank except emphases.");
					if (error.equals("2"))
						out.println("Please enter numerical values where requested.");
					if (error.equals("3"))
						out.println("Please enter values in valid range or -1.");
				}
			%></p>
			<form method="post" action="edit-university-action.jsp">
				<dl>
					<dt>School Name:</dt>
						<dd><input type="text" name="School" value="<%=s.getName()%>"></dd><br>
					<dt>State:</dt>
						<dd><input type="text" name="State" value="<%=s.getState()%>"></dd><br>
					<dt>Location:</dt>
						<dd><input type="radio" name="Location" value="SUBURBAN" <%=s.getLocation().toUpperCase().equals("SUBURBAN") ? "checked" : ""%>> Suburban&nbsp;
						<input type="radio" name="Location" value="URBAN" <%=s.getLocation().toUpperCase().equals("URBAN") ? "checked" : ""%>> Urban&nbsp;
						<input type="radio" name="Location" value="SMALL-CITY" <%=s.getLocation().toUpperCase().equals("SMALL-CITY") ? "checked" : ""%>> Small City&nbsp;
						<input type="radio" name="Location" value="-1" <%=s.getLocation().toUpperCase().equals("-1") ? "checked" : ""%>> Unknown
						<input type="hidden" name="Location" value=""></dd><br>
					<dt>Control:</dt>
						<dd><input type="radio" name="Control" value="PRIVATE" <%=s.getControl().toUpperCase().equals("PRIVATE") ? "checked" : ""%>> Private&nbsp;
						<input type="radio" name="Control" value="STATE" <%=s.getControl().toUpperCase().equals("STATE") ? "checked" : ""%>> State&nbsp;
						<input type="radio" name="Control" value="CITY" <%=s.getControl().toUpperCase().equals("CITY") ? "checked" : ""%>> City&nbsp;
						<input type="radio" name="Control" value="-1" <%=s.getControl().toUpperCase().equals("-1") ? "checked" : ""%>> Unknown
						<input type="hidden" name="Control" value=""></dd><br>
					<dt>Number of Students:</dt>
						<dd><input type="text" name="NumStudents" value="<%=s.getNumStudentsEnrolled()%>"></dd><br>
					<dt>% Female Students:</dt>
						<dd><input type="text" name="PercFemal" value="<%=s.getPercentFemEnrolled()%>"></dd><br>
					<dt>SAT Verbal:</dt>
						<dd><input type="text" name="SATVerbal" value="<%=s.getSatVerb()%>"></dd><br>
					<dt>SAT Math:</dt>
						<dd><input type="text" name="SATMath" value="<%=s.getSatMath()%>"></dd><br>
					<dt>Expenses:</dt>
						<dd><input type="text" name="Expenses" value="<%=s.getTuition()%>"></dd><br>
					<dt>% Financial Aid:</dt>
						<dd><input type="text" name="finAid" value="<%=s.getPercFinAid()%>"></dd><br>
					<dt>Number of Applicants:</dt>
						<dd><input type="text" name="numApps" value="<%=s.getNumApplications()%>"></dd><br>
					<dt>% Admitted:</dt>
						<dd><input type="text" name="percAdd" value="<%=s.getAdmitRate()%>"></dd><br>
					<dt>% Enrolled:</dt>
						<dd><input type="text" name="percEnrolled" value="<%=s.getDecideRate()%>"></dd><br>
					<dt>Academics Scale (1-5):</dt>
						<dd><input type="text" name="acaScale" value="<%=s.getAcademics()%>"></dd><br>
					<dt>Social Scale (1-5):</dt>
						<dd><input type="text" name="socScale" value="<%=s.getSocialLife()%>"></dd><br>
					<dt>Quality of Life Scale (1-5):</dt>
						<dd><input type="text" name="qualScale" value="<%=s.getQualityLife()%>"></dd><br>
					<dt>Emphases:</dt>
						<dd><input type="text" name="Emphases1" value="<%=emphases[0]!=null ? emphases[0] : ""%>"></dd><br>
						<dd><input type="text" name="Emphases2" value="<%=emphases[1]!=null ? emphases[1] : ""%>"></dd><br>
						<dd><input type="text" name="Emphases3" value="<%=emphases[2]!=null ? emphases[2] : ""%>"></dd><br>
						<dd><input type="text" name="Emphases4" value="<%=emphases[3]!=null ? emphases[3] : ""%>"></dd><br>
						<dd><input type="text" name="Emphases5" value="<%=emphases[4]!=null ? emphases[4] : ""%>"></dd>
				</dl>
				<input value="Save University" type="submit"><br>
				<input value="Reset" type="reset">
			</form>
		</div>
	</div>
</section>
</body>
</html>