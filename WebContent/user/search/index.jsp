<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>School Search</title>
	</head>
	<%
					try {
						int errorNum =Integer.parseInt(request.getParameter("Error"));
						if(errorNum != 0) {
							if(errorNum == 1) {
								out.println("	There was a problem with one of the numbers you entered, try again.");
							} else if(errorNum == 2) {
								out.println("	There was something wrong with one of the search terms that you entered, try again.");
							} else if(errorNum == 3) {
								out.println("	One of your searcg terms was not set properly, try again.");
							}
							%>
							<br>
							<br>
							<%
						}
						session.setAttribute("Login Error", -1);
					} catch (NullPointerException npe) {
						
					} catch (NumberFormatException nfe) {
						
					}
					session.setAttribute("SearchError", 0);
				%>
	<body>
		<!-- MATT: This is the entry form for a search. Directs input to search-action.jsp. -->
		Search Menu
		<br> 
		<form method="post" action="search-action.jsp" name="SearchForSchools">
			<br> 
			School Name:
				<input name="SchoolName" value="">
			<br> 
			State:
				<input name="State" value="">
			<br> 
			Location:
				<input name="Location" value="">
				(SUBURBAN, URBAN, SMALL-CITY or -1 if UNKNOWN)
			<br> 
			Control:
				<input name="Control" value="">
				(PRIVATE, STATE, CITY or -1 if UNKNOWN)
			<br> 
			Number of Students: between
				<input name="NumberOfStudents1" value=""> and 
				<input name="NumberOfStudents2" value="">
			<br> 
			% Female: between
				<input name="PerFemale1" value=""> and
				<input name="PerFemale2" value="">
			<br> 
			SAT Verbal: between 
				<input name="SATVerbal1" value=""> and
				<input name="SATVerbal2" value="">
			<br> 
			SAT Math: between
				<input name="SATMath1" value=""> and
				<input name="SATMath2" value="">
			<br> 
			Expenses: between
				<input name="Expenses1" value=""> and
				<input name="Expenses2" value="">
			<br> 
			% Financial Aid: between
				<input name="PerFinAid1" value=""> and
				<input name="PerFinAid2" value="">
			<br> 
			Number of Applicants: between
				<input name="NumOfApplicants1" value=""> and
				<input name="NumOfApplicants2" value="">
			<br> 
			% Admitted: between
				<input name="PerAdmitted1" value=""> and
				<input name="PerAdmitted2" value="">
			<br> 
			% Enrolled: between
				<input name="PerEnrolled1" value=""> and
				<input name="PerEnrolled2" value="">
			<br> 
			Academics Scale (1-5): between
				<input name="AcademicsScale1" value=""> and
				<input name="AcademicsScale2" value="">
			<br> 
			Social Scale (1-5): between
				<input name="SocialScale1" value=""> and
				<input name="SocialScale2" value="">
			<br> 
			Quality of Life Scale (1-5): between
				<input name="QualityOfLifeScale1" value=""> and
				<input name="QualityOfLifeScale2" value="">
			<br> 
			Emphases (Contains Either): 
				<br>
				<input name="Emphases1" value=""><br>
				<input name="Emphases2" value=""><br>
				<input name="Emphases3" value=""><br>
				<input name="Emphases4" value=""><br>
				<input name="Emphases5" value=""><br>
			<br>
				<input name="Submit" value="SUBMIT" type="submit"><br>
				<input name="Reset" value="RESET" type="reset"><br>
		</form>
	</body>
</html>