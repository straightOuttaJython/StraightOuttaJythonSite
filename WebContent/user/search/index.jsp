<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/verify-login.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<%@include file="/head.jsp"%>
	<%@include file="/header.jsp"%>
		<section id="content">
			<div class="pane single">
				<div class="name-bar">
					<span>Search for Schools</span>
				</div>
				<div class="inner-content">
					<p><%
		try {
			int errorNum =Integer.parseInt(request.getParameter("Error"));
			if(errorNum != 0) {
				if(errorNum == 1) {
					out.println("	There was a problem with one of the numbers you entered, try again.");
				} else if(errorNum == 2) {
					out.println("	There was something wrong with one of the search terms that you entered, try again.");
				} else if(errorNum == 3) {
					out.println("	One of your search terms was not set properly, try again.");
				}
			}
			session.setAttribute("Login Error", -1);
		} catch (NullPointerException npe) {
			
		} catch (NumberFormatException nfe) {
			
		}
		session.setAttribute("SearchError", 0);
	%>
	</p>
					<form method="post" action="search-action.jsp" name="SearchForSchools">
						<dl>
							<dt>School Name:</dt>
								<dd><input type="text" name="SchoolName" value=""></dd><br>
							<dt>State:</dt>
								<dd><input type="text" name="State" value=""></dd><br>
							<dt>Location:</dt>
								<dd><input type="radio" name="Location" value="SUBURBAN"> Suburban&nbsp;
								<input type="radio" name="Location" value="URBAN"> Urban&nbsp;
								<input type="radio" name="Location" value="SMALL-CITY"> Small City&nbsp;
								<input type="radio" name="Location" value="-1"> Unknown
								<input type="hidden" name="Location" value=""></dd><br>
							<dt>Control:</dt>
								<dd><input type="radio" name="Control" value="PRIVATE"> Private&nbsp;
								<input type="radio" name="Control" value="STATE"> State&nbsp;
								<input type="radio" name="Control" value="CITY"> City&nbsp;
								<input type="radio" name="Control" value="-1"> Unknown
								<input type="hidden" name="Control" value=""></dd><br>
							<dt>Number of Students:</dt>
								<dd>from&nbsp;<input type="text" name="NumberOfStudents1" value=""></dd><br>
								<dd>to&nbsp;<input type="text" name="NumberOfStudents2" value=""></dd><br>
							<dt>% Female Students:</dt>
								<dd>from&nbsp;<input type="text" name="PerFemale1" value=""></dd><br>
								<dd>to&nbsp;<input type="text" name="PerFemale2" value=""></dd><br>
							<dt>SAT Verbal:</dt>
								<dd>from&nbsp;<input type="text" name="SATVerbal1" value=""></dd><br>
								<dd>to&nbsp;<input type="text" name="SATVerbal2" value=""></dd><br>
							<dt>SAT Math:</dt>
								<dd>from&nbsp;<input type="text" name="SATMath1" value=""></dd><br>
								<dd>to&nbsp;<input type="text" name="SATMath2" value=""></dd><br>
							<dt>Expenses:</dt>
								<dd>from&nbsp;<input type="text" name="Expenses1" value=""></dd><br>
								<dd>to&nbsp;<input type="text" name="Expenses2" value=""></dd><br>
							<dt>% Financial Aid:</dt>
								<dd>from&nbsp;<input type="text" name="PerFinAid1" value=""></dd><br>
								<dd>to&nbsp;<input type="text" name="PerFinAid2" value=""></dd><br>
							<dt>Number of Applicants:</dt>
								<dd>from&nbsp;<input type="text" name="NumOfApplicants1" value=""></dd><br>
								<dd>to&nbsp;<input type="text" name="NumOfApplicants2" value=""></dd><br>
							<dt>% Admitted:</dt>
								<dd>from&nbsp;<input type="text" name="PerAdmitted1" value=""></dd><br>
								<dd>to&nbsp;<input type="text" name="PerAdmitted2" value=""></dd><br>
							<dt>% Enrolled:</dt>
								<dd>from&nbsp;<input type="text" name="PerEnrolled1" value=""></dd><br>
								<dd>to&nbsp;<input type="text" name="PerEnrolled2" value=""></dd><br>
							<dt>Academics Scale (1-5):</dt>
								<dd>from&nbsp;<input type="text" name="AcademicsScale1" value=""></dd><br>
								<dd>to&nbsp;<input type="text" name="AcademicsScale2" value=""></dd><br>
							<dt>Social Scale (1-5):</dt>
								<dd>from&nbsp;<input type="text" name="SocialScale1" value=""></dd><br>
								<dd>to&nbsp;<input type="text" name="SocialScale2" value=""></dd><br>
							<dt>Quality of Life Scale (1-5):</dt>
								<dd>from&nbsp;<input type="text" name="QualityOfLifeScale1" value=""></dd><br>
								<dd>to&nbsp;<input type="text" name="QualityOfLifeScale2" value=""></dd><br>
							<dt>Emphases:</dt>
								<dd><input type="text" name="Emphases1" value=""></dd><br>
								<dd><input type="text" name="Emphases2" value=""></dd><br>
								<dd><input type="text" name="Emphases3" value=""></dd><br>
								<dd><input type="text" name="Emphases4" value=""></dd><br>
								<dd><input type="text" name="Emphases5" value=""></dd>
						</dl>
						<input name="Submit" value="SUBMIT" type="submit"><br>
						<input name="Reset" value="RESET" type="reset">
					</form>
				</div>
			</div>
			<br>
		</section>
	</body>
</html>