<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.ui.*" import="cmc.home.*" import="cmc.entity.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Viewing School</title>s
</head>
	<body>
	<!-- DUONG
	This is the expanded school view. 
	I would recommended storing the school to be viewed
	in the session variable and then getting it from there. -->
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
	
		<table>
			<tr>
			<td>School</td>
			<td><%=school.getName()%></td>
			</tr>
			<tr>
			<td>State</td>
			<td><%=state%></td>
			</tr>
			<tr>
			<td>Location</td>
			<td><%=location%></td>
			</tr>
			<tr>
			<td>Control</td>
			<td><%=control%></td>
			</tr>
			<tr>
			<td>Number of Students</td>
			<td><%=numStudents%></td>
			</tr>
			<tr>
			<td>% Female</td>
			<td><%=percFemale%></td>
			</tr>
			<tr>
			<td>SAT Verbal</td>
			<td><%=satVerbal%></td>
			</tr>
			<tr>
			<td>SAT Math</td>
			<td><%=satMath%></td>
			</tr>
			<tr>
			<td>Expenses</td>
			<td><%=expenses%></td>
			</tr>
			<tr>
			<td>% Financial Aid</td>
			<td><%=percAid%></td>
			</tr>
			<tr>
			<td>Number of Applicants</td>
			<td><%=numApplicants%></td>
			</tr>
			<tr>
			<td>percAdmitted</td>
			<td><%=percAdmitted%></td>
			</tr>
			<tr>
			<td>percEnrolled</td>
			<td><%=percEnrolled%></td>
			</tr>
			<%for(int i = 0; i < emphases.length; i++) { %>
				<tr>
					<td>emphases</td>
					<td><%=emphases[i]%></td>
				</tr>
			<%} %>
			<tr>
			<td>academic</td>
			<td><%=academic%></td>
			</tr>
			<tr>
			<td>social</td>
			<td><%=social%></td>
			</tr>
			<tr>
			<td>quality</td>
			<td><%=quality%></td>
			</tr>
		</table>
		<table>
			<% out.println("Recommended Schools -- "); %>
		</table>
	</body>
</html>