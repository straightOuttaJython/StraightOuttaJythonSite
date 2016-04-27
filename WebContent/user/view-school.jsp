<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.ui.*" import="cmc.home.*" import="cmc.entity.*"%>
<%@include file="/verify-login.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="/head.jsp"%>
<%@include file="/header.jsp"%>
<%  
	String schoolName = (String) request.getParameter("school");
	UserUI ui = (UserUI) session.getAttribute("UI");
	School school = ui.getSchool(schoolName);
	String state = school.getState();
	String location = school.getLocation();
	String control = school.getControl();
	int numStudents = school.getNumStudentsEnrolled();
	double percFemale = school.getPercentFemEnrolled();
	double satVerbal = school.getSatVerb();
	double satMath = school.getSatMath();
	double expenses = school.getTuition();
	double percAid = school.getPercFinAid();
	int numApplicants = school.getNumApplications();
	double percAdmitted = school.getAdmitRate();
	double percEnrolled = school.getDecideRate();
	int academic = school.getAcademics();
	int social = school.getSocialLife();
	int quality = school.getQualityLife(); 
	String[] emphases = school.getEmphases();
%>
<section id="content">
	<div class="pane single" id="view-school">
		<div class="name-bar">
			<span>Viewing <%=schoolName%></span>
		</div>
		<div class="inner-content">
			<dl>
				<dt>School Name:</dt>
					<dd><%=schoolName%></dd><br>
				<dt>State:</dt>
					<dd><%=state%></dd><br>
				<dt>Location:</dt>
					<dd><%=location%></dd><br>
				<dt>Control:</dt>
					<dd><%=control%></dd><br>
				<dt>Number of Students:</dt>
					<dd><%=numStudents%></dd><br>
				<dt>% Female Students:</dt>
					<dd><%=percFemale%></dd><br>
				<dt>SAT Verbal:</dt>
					<dd><%=satVerbal%></dd><br>
				<dt>SAT Math:</dt>
					<dd><%=satMath%></dd><br>
				<dt>Expenses:</dt>
					<dd><%=expenses%></dd><br>
				<dt>% Financial Aid:</dt>
					<dd><%=percAid%></dd><br>
				<dt>Number of Applicants:</dt>
					<dd><%=numApplicants%></dd><br>
				<dt>% Admitted:</dt>
					<dd><%=percAdmitted%></dd><br>
				<dt>% Enrolled:</dt>
					<dd><%=percEnrolled%></dd><br>
				<dt>Academics Scale (1-5):</dt>
					<dd><%=academic%></dd><br>
				<dt>Social Scale (1-5):</dt>
					<dd><%=social%></dd><br>
				<dt>Quality of Life Scale (1-5):</dt>
					<dd><%=quality%></dd><br>
				<dt>Emphases:</dt>
				<%for(String em : emphases) { %>
					<dd><%=em%></dd><br>
				<%} %>
			</dl>
			<%	if (!ui.hasSchool(schoolName)) { %>
			<form action="search/save-school-action.jsp">
				<input type="hidden" name="school" value="<%=schoolName%>"></input>
				<input type="submit" value="Save"></input>
			</form>
			<%	} %>
		</div>
	</div>
<%
	School[] recSchools = ui.getRecommendations(school);
	if (recSchools.length > 0) {
		for (School recSchool : recSchools) {
%>
	<div class="pane multi">
		<div class="name-bar"><%=recSchool.getName()%></div>
		<div class="inner-content">
			<dl>
				 <dt>State</dt>
					<dd><%=recSchool.getState()%></dd>
				 <dt>Location</dt>
					<dd><%=recSchool.getLocation()%></dd>
				 <dt>Control</dt>
					<dd><%=recSchool.getControl()%></dd>
				 <dt>Number of Students</dt>
					<dd><%=recSchool.getNumStudentsEnrolled()%></dd>
				<form action="search/save-school-action.jsp">
					<input type="hidden" name="school" value="<%=recSchool.getName()%>"></input>
					<input type="submit" value="Save"></input>
				</form>
				<form action="view-school.jsp">
					<input type="hidden" name="school" value="<%=recSchool.getName()%>"></input>
					<input type="submit" value="View"></input>
				</form>
			</dl>
		</div>
	</div>
		<%
		}
	}
%>
</section>
</body>
</html>