<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.ui.*" import="cmc.home.*" import="cmc.entity.*"%>
    
    <%	
	AdminUI aUI = new AdminUI();
	School s = new School();
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Manage University</title>
</head>
<body>
<table style="text-align: left; width: 266px; height: 228px;" border="1" cellpadding="2" cellspacing="2">
		<tbody>
			<tr>
				<td>
					<FORM METHOD="LINK" ACTION="add-university.jsp">
						<input value="Add School" name="Add User" type="submit">
					</FORM>
				</td>
			</tr>
			<tr>
				<td>
				School
				</td>
				<td>
				State
				</td>
				<td>
				Location
				</td>
				<td>
				Control
				</td>
				<td>
				# of Students
				</td>
				<td>
				% of Females
				</td>
				<td>
				SAT Verbal
				</td>
				<td>
				SAT Math
				</td>
				
				<td>
				Expenses
				</td>
				
				<td>
				% with Fin Aid
				</td>
				
				<td>
				# of Applicants
				</td>
				
				<td>
				% Admitted
				</td>
				
				<td>
				% Enrolled
				</td>
				
				<td>
				Academic Scale (1-5)
				</td>
				
				<td>
				Social Scale (1-5)
				</td>
				
				<td>
				Quality of Life Scale (1-5)
				</td>
				
				<td>
				
				</td>
			</tr>
			
			<%
			School[] schoolList = aUI.getSchoolList();
			for(int i = 0; i < schoolList.length; i++)
			{
				s = schoolList[i];
					%>
					
					<tr>
				<td>
				<%=s.getName()%>
				</td>
				<td>
				<%=s.getState()%>
				</td>
				<td>
				<%=s.getLocation()%>
				</td>
				<td>
				<%=s.getControl()%>
				</td>
				<td>
				<%=s.getNumStudentsEnrolled()%>
				</td>
				<td>
				<%=s.getPercentFemEnrolled()%>
				</td>
				<td>
				<%=s.getSatVerb()%>
				</td>
				<td>
				<%=s.getSatMath()%>
				</td>
				
				<td>
				<%=s.getTuition()%>
				</td>
				
				<td>
				<%=s.getPercFinAid()%>
				</td>
				
				<td>
				<%=s.getNumApplications()%>
				</td>
				
				<td>
				<%=s.getAdmitRate()%>
				</td>
				
				<td>
				<%=s.getDecideRate()%>
				</td>
				
				<td>
				<%=s.getAcademics()%>
				</td>
				
				<td>
				<%=s.getSocialLife()%>
				</td>
				
				<td>
				<%=s.getQualityLife()%>
				</td>
				
			

		<%
			out.print("<td>");
			out.print("<FORM METHOD=\"LINK\" ACTION=\"edit-university.jsp\">");
			out.print("<input value=\"Edit User\" name=\"Edit User\" type=\"submit\">");
			%>
			<input name="school" value="<%=s.getName() %>" type="hidden">
			<%
			session.setAttribute("Admin UI", aUI);
			out.print("</FORM>");
			out.print("</td>");
		
			out.print("</tr>");
			}
			%>
		<tbody>
	</tbody>

</body>
</html>