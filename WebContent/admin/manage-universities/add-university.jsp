<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@include file="/verify-login.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="/head.jsp"%>
<%@include file="/header.jsp"%>
<section id="content">
	<div class="pane single">
		<div class="name-bar">
			<span>Add New University</span>
		</div>
		<div class="inner-content"> 
			<form method="post" action="add-university-action.jsp">
				<p><%
					String error = request.getParameter("Error");
					if(error!=null) {
						if (error.equals("1"))
							out.println("No field may be blank except emphases.");
						if (error.equals("2"))
							out.println("Please enter numerical values where requested.");
					}
				%></p>
				<dl>
					<dt>School Name:</dt>
						<dd><input type="text" name="School"></dd><br>
					<dt>State:</dt>
						<dd><input type="text" name="State"></dd><br>
					<dt>Location:</dt>
						<dd><input type="radio" name="Location" value="SUBURBAN" > Suburban&nbsp;
						<input type="radio" name="Location" value="URBAN" > Urban&nbsp;
						<input type="radio" name="Location" value="SMALL-CITY" > Small City&nbsp;
						<input type="radio" name="Location" value="-1" > Unknown
						<input type="hidden" name="Location" value=""></dd><br>
					<dt>Control:</dt>
						<dd><input type="radio" name="Control" value="PRIVATE" > Private&nbsp;
						<input type="radio" name="Control" value="STATE" > State&nbsp;
						<input type="radio" name="Control" value="CITY" > City&nbsp;
						<input type="radio" name="Control" value="-1" > Unknown
						<input type="hidden" name="Control" value=""></dd><br>
					<dt>Number of Students:</dt>
						<dd><input type="text" name="NumStudents"></dd><br>
					<dt>% Female Students:</dt>
						<dd><input type="text" name="PercFemal"></dd><br>
					<dt>SAT Verbal:</dt>
						<dd><input type="text" name="SATVerbal"></dd><br>
					<dt>SAT Math:</dt>
						<dd><input type="text" name="SATMath"></dd><br>
					<dt>Expenses:</dt>
						<dd><input type="text" name="Expenses"></dd><br>
					<dt>% Financial Aid:</dt>
						<dd><input type="text" name="finAid"></dd><br>
					<dt>Number of Applicants:</dt>
						<dd><input type="text" name="numApps"></dd><br>
					<dt>% Admitted:</dt>
						<dd><input type="text" name="percAdd"></dd><br>
					<dt>% Enrolled:</dt>
						<dd><input type="text" name="percEnrolled"></dd><br>
					<dt>Academics Scale (1-5):</dt>
						<dd><input type="text" name="acaScale"></dd><br>
					<dt>Social Scale (1-5):</dt>
						<dd><input type="text" name="socScale"></dd><br>
					<dt>Quality of Life Scale (1-5):</dt>
						<dd><input type="text" name="qualScale"></dd><br>
					<dt>Emphases:</dt>
						<dd><input type="text" name="Emphases1"></dd><br>
						<dd><input type="text" name="Emphases2"></dd><br>
						<dd><input type="text" name="Emphases3"></dd><br>
						<dd><input type="text" name="Emphases4"></dd><br>
						<dd><input type="text" name="Emphases5"></dd>
				</dl>
				<input value="Save University" type="submit"><br>
				<input value="Reset" type="reset">
			</form>
		</div>
	</div>
</section>
</body>
</html>