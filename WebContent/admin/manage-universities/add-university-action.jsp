<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.ui.*"%>
<%@include file="/verify-login.jsp"%>
    
<%
	AdminUI aui = (AdminUI)session.getAttribute("UI");
	String schoolName = request.getParameter("School");
	String state = request.getParameter("State");
	String location = request.getParameter("Location");
	String control = request.getParameter("Control");
	String numStudents = request.getParameter("NumStudents");
	String percFemal = request.getParameter("PercFemal");
	String sATVerbal = request.getParameter("SATVerbal");
	String sATMath = request.getParameter("SATMath");
	String expenses = request.getParameter("Expenses");
	String finAid = request.getParameter("finAid");
	String numApps = request.getParameter("numApps");
	String percAdd = request.getParameter("percAdd");
	String percEnrolled = request.getParameter("percEnrolled");
	String acaScale = request.getParameter("acaScale");
	String socScale = request.getParameter("socScale");
	String qualScale = request.getParameter("qualScale");
	String emphases1 = request.getParameter("Emphases1");
	String emphases2 = request.getParameter("Emphases2");
	String emphases3 = request.getParameter("Emphases3");
	String emphases4 = request.getParameter("Emphases4");
	String emphases5 = request.getParameter("Emphases5");

	if( schoolName.equals("")|| 
		state.equals("") || 
		location.equals("")|| 
		control.equals("") ||
		numStudents.equals("") ||  
		percFemal.equals("") ||
		sATVerbal.equals("") ||
		sATMath.equals("") ||
		expenses.equals("") ||
		finAid.equals("") ||
		numApps.equals("") ||
		percAdd.equals("") ||
		percEnrolled.equals("") ||
		acaScale.equals("") ||
		socScale.equals("") ||
		qualScale.equals("")) {
		response.sendRedirect("edit-university.jsp?Error=1&school="+schoolName);
	}
	else {
		String[] listEmp = aui.getEmph(schoolName);
		try {
			aui.addSchool(request.getParameter("School"),request.getParameter("State"),
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
						  Integer.parseInt(request.getParameter("qualScale")));
		}
		catch (NumberFormatException nFE) {
			response.sendRedirect("edit-university.jsp?Error=2&school="+schoolName);
			return;
		}
		catch (IllegalArgumentException iAE) {
			response.sendRedirect("edit-university.jsp?Error=3&school="+schoolName);
			return;
		}
		
		aui.removeSchoolEmph(schoolName,listEmp[0]);
		aui.removeSchoolEmph(schoolName,listEmp[1]);
		aui.removeSchoolEmph(schoolName,listEmp[2]);
		aui.removeSchoolEmph(schoolName,listEmp[3]);
		aui.removeSchoolEmph(schoolName,listEmp[4]);
		
		aui.addSchoolEmph(schoolName,emphases1);
		aui.addSchoolEmph(schoolName,emphases2);
		aui.addSchoolEmph(schoolName,emphases3);
		aui.addSchoolEmph(schoolName,emphases4);
		aui.addSchoolEmph(schoolName,emphases5);
		response.sendRedirect("index.jsp");
	}
%>