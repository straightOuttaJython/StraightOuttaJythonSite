<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.ui.*"%>
    
    <%
	AdminUI aui = (AdminUI)session.getAttribute("UI");
	if(request.getParameter("School").equals("")|| 
			request.getParameter("State").equals("") || 
			request.getParameter("Location").equals("")|| 
			request.getParameter("Control").equals("") ||
		  request.getParameter("NumStudents").equals("") ||  
	  	request.getParameter("PercFemal").equals("") ||
	  	request.getParameter("SATVerbal").equals("") ||
	 	 request.getParameter("SATMath").equals("") ||
	 	 request.getParameter("Expenses").equals("") ||
	  	request.getParameter("finAid").equals("") ||
	  	request.getParameter("numApps").equals("") ||
	  	request.getParameter("percAdd").equals("") ||
	  	request.getParameter("percEnrolled").equals("") ||
	  	request.getParameter("acaScale").equals("") ||
	  	request.getParameter("socScale").equals("") ||
	  	request.getParameter("qualScale").equals("") ||
		request.getParameter("Emphases1").equals("") ||
		request.getParameter("Emphases2").equals("") ||
		request.getParameter("Emphases3").equals("") ||
		request.getParameter("Emphases4").equals("") ||
		request.getParameter("Emphases5").equals(""))
	{
		response.sendRedirect("add-university.jsp?Error=1");
	}
	else
	{
    aui.editSchool(request.getParameter("School"),request.getParameter("State"),
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
    
    aui.addSchoolEmph(request.getParameter("School"),request.getParameter("Emphases1"));
    aui.addSchoolEmph(request.getParameter("School"),request.getParameter("Emphases2"));
    aui.addSchoolEmph(request.getParameter("School"),request.getParameter("Emphases3"));
    aui.addSchoolEmph(request.getParameter("School"),request.getParameter("Emphases4"));
    aui.addSchoolEmph(request.getParameter("School"),request.getParameter("Emphases5"));
	//Remove the emphasis from that page then add the new one
	response.sendRedirect("index.jsp");
	}
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