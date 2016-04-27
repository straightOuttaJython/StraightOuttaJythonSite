<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.ui.*"%>
    
    <%
	AdminUI auI = (AdminUI)session.getAttribute("AdminUI");
    auI.editSchool(request.getParameter("School"),request.getParameter("State"),
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
    auI.removeSchoolEmph(request.getParameter("School"),request.getParameter("Emphases1"));
    auI.removeSchoolEmph(request.getParameter("School"),request.getParameter("Emphases2"));
    auI.removeSchoolEmph(request.getParameter("School"),request.getParameter("Emphases3"));
    auI.removeSchoolEmph(request.getParameter("School"),request.getParameter("Emphases4"));
    auI.removeSchoolEmph(request.getParameter("School"),request.getParameter("Emphases5"));
	
    auI.addSchoolEmph(request.getParameter("School"),request.getParameter("Emphases1"));
    auI.addSchoolEmph(request.getParameter("School"),request.getParameter("Emphases2"));
    auI.addSchoolEmph(request.getParameter("School"),request.getParameter("Emphases3"));
    auI.addSchoolEmph(request.getParameter("School"),request.getParameter("Emphases4"));
    auI.addSchoolEmph(request.getParameter("School"),request.getParameter("Emphases5"));
	//Remove the emphasis from that page then add the new one
	response.sendRedirect("index.jsp");
   %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- ERIN
this is where the call to add the university goes-->

</body>
</html>