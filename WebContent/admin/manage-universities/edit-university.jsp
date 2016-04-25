<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.ui.*" import="cmc.entity.*" %>
    
    <%
    AdminUI aui = (AdminUI)session.getAttribute("Admin UI"); 
    String school = request.getParameter("school");
    School s = (School)aui.getSchool(school);
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="head-and-header.html" %>
		<form method="post" action="edit-university-action.jsp" name="editUser">
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
					<td style="vertical-align: top;">SAT Verbal<br>
					</td>
					<td style="vertical-align: top;"><input name="SATVerbal"
						value="<%=s.getSatVerb()%>"></td>
				</tr>
				
				<tr>
					<td style="vertical-align: top;">SAT Math<br>
					</td>
					<td style="vertical-align: top;"><input name="SATMath"
						value="<%=s.getSatMath()%>"></td>
				</tr>
				
				<tr>
					<td style="vertical-align: top;">Expense<br>
					</td>
					<td style="vertical-align: top;"><input name="Expenses"
						value="<%=s.getTuition()%>"></td>
				</tr>
				
				<tr>
					<td style="vertical-align: top;">% Fin Aid<br>
					</td>
					<td style="vertical-align: top;"><input name="finAid"
						value="<%=s.getPercFinAid()%>"></td>
				</tr>
				
				<tr>
					<td style="vertical-align: top;">Number Of Applicants<br>
					</td>
					<td style="vertical-align: top;"><input name="numApps"
						value="<%=s.getNumApplications()%>"></td>
				</tr>
				
				<tr>
					<td style="vertical-align: top;">% Admitted <br>
					</td>
					<td style="vertical-align: top;"><input name="percAdd"
						value="<%=s.getAdmitRate()%>"></td>
				</tr>
				
				<tr>
					<td style="vertical-align: top;">% Enrolled<br>
					</td>
					<td style="vertical-align: top;"><input name="percEnrolled"
						value="<%=s.getDecideRate()%>"></td>
				</tr>
				
				<tr>
					<td style="vertical-align: top;">Academic Scale (1-5)<br>
					</td>
					<td style="vertical-align: top;"><input name="acaScale"
						value="<%=s.getAcademics()%>"></td>
				</tr>
				
				<tr>
					<td style="vertical-align: top;">Social Scale (1-5)<br>
					</td>
					<td style="vertical-align: top;"><input name="socScale"
						value="<%=s.getSocialLife()%>"></td>
				</tr>
					
				<tr>
					<td style="vertical-align: top;">Quality of Life Scale (1-5)<br>
					</td>
					<td style="vertical-align: top;"><input name="qualScale"
						value="<%=s.getQualityLife()%>"></td>
				</tr>
				
				<tr>
				<td style="vertical-align: top;">Emphases<br>
				</td>
				<td style="vertical-align: top;">
				<%
					String[] ll = aui.getEmph(s.getName());
				%>
						<input name="Emphases1" value="<%=ll[0]%>">
						<input name="Emphases2" value="<%=ll[1]%>">
						<input name="Emphases3" value="<%=ll[2]%>">
						<input name="Emphases4" value="<%=ll[3]%>">
						<input name="Emphases5" value="<%=ll[4]%>">
				</td>


				</tr>
				
				<tr>
					<td style="vertical-align: top;">
					<input value="Apply Changes" name="Apply Changes" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					
					<td style="vertical-align: top;">
					<form method="post" action="index.jsp" name="editUser">
					<input value="Cancel Changes" name="Cancel Changes" type="submit">
					</form>
					</td>
					
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>