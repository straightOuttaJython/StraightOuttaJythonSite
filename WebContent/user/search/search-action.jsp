<!-- MATT
Don't forget to catch all the tricky exceptions.
This page redirects to results.jsp. -->
<%@ page import="cmc.ui.*"%>
<%@ page import="cmc.entity.*"%>
<%
	String name = request.getParameter("SchoolName");
	String state = request.getParameter("State");
	String location = request.getParameter("Location");
	String control = request.getParameter("Control");
	String numberOfStudents = request.getParameter("NumberOfStudents1")+":"+request.getParameter("NumberOfStudents2");
	numberOfStudents = numberOfStudents.equals(":") ? "" : numberOfStudents; 
	String perFemale = request.getParameter("PerFemale1")+":"+request.getParameter("PerFemale2");
	perFemale = perFemale.equals(":") ? "" : perFemale;
	String SATVerbal = request.getParameter("SATVerbal1")+":"+request.getParameter("SATVerbal2");
	SATVerbal = SATVerbal.equals(":") ? "" : SATVerbal;
	String SATMath = request.getParameter("SATMath1")+":"+request.getParameter("SATMath2");
	SATMath = SATMath.equals(":") ? "" : SATMath;
	String expenses = request.getParameter("Expenses1")+":"+request.getParameter("Expenses2");
	expenses = expenses.equals(":") ? "" : expenses;
	String perFinAid = request.getParameter("PerFinAid1")+":"+request.getParameter("PerFinAid2");
	perFinAid = perFinAid.equals(":") ? "" : perFinAid;
	String numOfApplicants = request.getParameter("NumOfApplicants1")+":"+request.getParameter("NumOfApplicants2");
	numOfApplicants = numOfApplicants.equals(":") ? "" : numOfApplicants;
	String perAdmitted = request.getParameter("PerAdmitted1")+":"+request.getParameter("PerAdmitted2");
	perAdmitted = perAdmitted.equals(":") ? "" : perAdmitted;
	String perEnrolled = request.getParameter("PerEnrolled1")+":"+request.getParameter("PerEnrolled2");
	perEnrolled = perEnrolled.equals(":") ? "" : perEnrolled;
	String academicsScale = request.getParameter("AcademicsScale1")+":"+request.getParameter("AcademicsScale2");
	academicsScale = academicsScale.equals(":") ? "" : academicsScale;
	String socialScale = request.getParameter("SocialScale1")+":"+request.getParameter("SocialScale2");
	socialScale = socialScale.equals(":") ? "" : socialScale;
	String qualityOfLifeScale = request.getParameter("QualityOfLifeScale1")+":"+request.getParameter("QualityOfLifeScale2");
	qualityOfLifeScale = qualityOfLifeScale.equals(":") ? "" : qualityOfLifeScale;
	String emphases1 = request.getParameter("Emphases1");
	String emphases2 = request.getParameter("Emphases2");
	String emphases3 = request.getParameter("Emphases3");
	String emphases4 = request.getParameter("Emphases4");
	String emphases5 = request.getParameter("Emphases5");
	String[] school = {name, state, location, control, numberOfStudents, 
	                   perFemale, SATVerbal, SATMath, 
	                   expenses, perFinAid, numOfApplicants,
	                   perAdmitted, perEnrolled, academicsScale,
	                   socialScale, qualityOfLifeScale};
	String[] emphases = {emphases1, emphases2, emphases3, emphases4, emphases5};
	UserUI ui = new UserUI(new Person());
	School[] schoolArray = new School[1];
	schoolArray[0] = new School();
	try {
		 schoolArray = ui.searchForSchools(school, emphases);
		 session.setAttribute("SearchError", 0);
		 session.setAttribute("SearchResults", schoolArray);
		 response.sendRedirect("results.jsp");
	} catch(NumberFormatException iae) {
		response.sendRedirect("index.jsp?Error=1");
	} catch(IllegalArgumentException nfe) {
		response.sendRedirect("index.jsp?Error=2");
	} catch(IllegalStateException iae) {
		response.sendRedirect("index.jsp?Error=3");
	}
%>