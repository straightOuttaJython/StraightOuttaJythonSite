<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add University</title>
</head>
<body>

<%
try 
{
	int error = Integer.parseInt(request.getParameter("Error"));
		if(error != 0) 
	{
		out.println("Please do not leave anything blank!");
	}
} 
catch (NumberFormatException npe) {	

}
	
%>
	<form method="post" action="add-university-action.jsp" name="editUser">
		<br>
		<table style="text-align: left; width: 266px; height: 228px;"
			border="1" cellpadding="2" cellspacing="2">
			<tbody>
				<tr>
					<td style="vertical-align: top;">School<br>
					</td>
					<td style="vertical-align: top;"><input name="School"
						value=""><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">State<br>
					</td>
					<td style="vertical-align: top;"><input name="State"
						value=""></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Location<br>
					</td>
					<td style="vertical-align: top;"><input name="Location"
						value=""></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Control<br>
					</td>
					<td style="vertical-align: top;"><input name="Control"
						value=""></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Number of Students<br>
					</td>
					<td style="vertical-align: top;"><input name="NumStudents"
						value=""></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">% Female<br>
					</td>
					<td style="vertical-align: top;"><input name="PercFemal"
						value=""></td>
				</tr>
				
				<tr>
					<td style="vertical-align: top;">SAT Verbal<br>
					</td>
					<td style="vertical-align: top;"><input name="SATVerbal"
						value=""></td>
				</tr>
				
				<tr>
					<td style="vertical-align: top;">SAT Math<br>
					</td>
					<td style="vertical-align: top;"><input name="SATMath"
						value=""></td>
				</tr>
				
				<tr>
					<td style="vertical-align: top;">Expense<br>
					</td>
					<td style="vertical-align: top;"><input name="Expenses"
						value=""></td>
				</tr>
				
				<tr>
					<td style="vertical-align: top;">% Fin Aid<br>
					</td>
					<td style="vertical-align: top;"><input name="finAid"
						value=""></td>
				</tr>
				
				<tr>
					<td style="vertical-align: top;">Number Of Applicants<br>
					</td>
					<td style="vertical-align: top;"><input name="numApps"
						value=""></td>
				</tr>
				
				<tr>
					<td style="vertical-align: top;">% Admitted <br>
					</td>
					<td style="vertical-align: top;"><input name="percAdd"
						value=""></td>
				</tr>
				
				<tr>
					<td style="vertical-align: top;">% Enrolled<br>
					</td>
					<td style="vertical-align: top;"><input name="percEnrolled"
						value=""></td>
				</tr>
				
				<tr>
					<td style="vertical-align: top;">Academic Scale (1-5)<br>
					</td>
					<td style="vertical-align: top;"><input name="acaScale"
						value=""></td>
				</tr>
				
				<tr>
					<td style="vertical-align: top;">Social Scale (1-5)<br>
					</td>
					<td style="vertical-align: top;"><input name="socScale"
						value=""></td>
				</tr>
					
				<tr>
					<td style="vertical-align: top;">Quality of Life Scale (1-5)<br>
					</td>
					<td style="vertical-align: top;"><input name="qualScale"
						value=""></td>
				</tr>
				
				<tr>
				<td style="vertical-align: top;">Emphases<br>
				</td>
				<td style="vertical-align: top;">
						<input name="Emphases1" value="">
						<input name="Emphases2" value="">
						<input name="Emphases3" value="">
						<input name="Emphases4" value="">
						<input name="Emphases5" value="">
				</td>


				</tr>
				
				<tr>
					<td style="vertical-align: top;"><input value="Add School"
						name="Apply Changes" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td style="vertical-align: top;"><input value="Reset"
						name="Reset" type="reset"></td>
				</tr>
			</tbody>
		</table>
	</form>

</body>
</html>