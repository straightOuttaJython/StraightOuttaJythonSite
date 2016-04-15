<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.home.*" import="cmc.entity.*" %>
    
    <%
    SchoolHome ssh = (SchoolHome)session.getAttribute("SchoolHome"); 
    String school = request.getParameter("school");
    School s = (School)ssh.getSchool(school);
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit University</title>
</head>
<body>

		<form method="post" action="edit-user-action.jsp" name="editUser">
		<br>
		<table style="text-align: left; width: 266px; height: 228px;"
			border="1" cellpadding="2" cellspacing="2">
			<tbody>
				<tr>
					<td style="vertical-align: top;">School<br>
					</td>
					<td style="vertical-align: top;"><input name="School"
						value="<%=s.getName()%>"><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">State<br>
					</td>
					<td style="vertical-align: top;"><input name="State"
						value="<%=s.getState()%>"></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Location<br>
					</td>
					<td style="vertical-align: top;"><input name="Location"
						value="<%=s.getLocation()%>"></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Control<br>
					</td>
					<td style="vertical-align: top;"><input name="Control"
						value="<%=s.getControl()%>"></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Number of Students<br>
					</td>
					<td style="vertical-align: top;"><input name="NumStudents"
						value="<%=s.getNumStudentsEnrolled()%>"></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">% Female<br>
					</td>
					<td style="vertical-align: top;"><input name="PercFemal"
						value="<%=s.getPercentFemEnrolled()%>"></td>
				</tr>
				<tr>
					<td style="vertical-align: top;"><input value="Edit"
						name="Edit" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td style="vertical-align: top;"><input value="Reset"
						name="Reset" type="reset"></td>
				</tr>
			</tbody>
		</table>

</body>
</html>