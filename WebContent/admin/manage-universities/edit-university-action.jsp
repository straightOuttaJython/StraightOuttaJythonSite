<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.home.*" import = "cmc.entity.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	SchoolHome sssh = (SchoolHome)session.getAttribute("SchoolHome");
	sssh.updateSchool(request.getParameter("School"),request.getParameter("State"),
					  request.getParameter("Location"), request.getParameter("Control"),
					  Integer.parseInt(request.getParameter("NumStudents")), 
					  Double.parseDouble(request.getParameter("PercFemal")), 
					  Double.parseDouble(request.getParameter("SATVerbal")),
					  Double.parseDouble(request.getParameter("SATMath")),
					  Double.parseDouble(request.getParameter("Expenses")),
					  Double.parseDouble(request.getParameter("finAid")),
					  Integer.parseInt(request.getParameter("numApps")),
					  Double.parseDouble(request.getParameter("percAdd")),
					  Double.parseDouble(request.getParameter("percEnrolled")),
					  Integer.parseInt(request.getParameter("acaScale")),
					  Integer.parseInt(request.getParameter("socScale")),
					  Integer.parseInt(request.getParameter("qualScale"))
			);
	School sc = (School)sssh.getSchool(request.getParameter("School"));
	sssh.removeSchoolEmph(request.getParameter("School"),request.getParameter("Emphases1"));
	sssh.removeSchoolEmph(request.getParameter("School"),request.getParameter("Emphases2"));
	sssh.removeSchoolEmph(request.getParameter("School"),request.getParameter("Emphases3"));
	sssh.removeSchoolEmph(request.getParameter("School"),request.getParameter("Emphases4"));
	sssh.removeSchoolEmph(request.getParameter("School"),request.getParameter("Emphases5"));
	
	sssh.addSchoolEmph(request.getParameter("School"),request.getParameter("Emphases1"));
	sssh.addSchoolEmph(request.getParameter("School"),request.getParameter("Emphases2"));
	sssh.addSchoolEmph(request.getParameter("School"),request.getParameter("Emphases3"));
	sssh.addSchoolEmph(request.getParameter("School"),request.getParameter("Emphases4"));
	sssh.addSchoolEmph(request.getParameter("School"),request.getParameter("Emphases5"));
	//Remove the emphasis from that page then add the new one
	response.sendRedirect("index.jsp");
   %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>bye</title>
</head>
<body>
<!-- ERIN
this is where the call to edit the university goes-->

</body>
</html>