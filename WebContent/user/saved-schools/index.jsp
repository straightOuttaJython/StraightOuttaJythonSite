<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.ui.*" import="cmc.home.*" import="cmc.entity.*"%>

<%	
	SchoolHome sh = new SchoolHome();
	PersonHome ph = new PersonHome();
%>    
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Saved school</title>
</head>
<body>
<!-- DUONG
This is the Manage Saved Schools page. The view button should direct
to ../view-school.jsp and the remove button should direct 
to remove-school-action.jsp.-->

<%
School[] schools = sh.listOfSchools();
int len = schools.length;
%>

<table border="2" style="width: 481px; height: 65px; ">
     <tbody>
      <% for(int r = 0;r<=len;r++) { %>
         <tr>
<td>
<%String schoolName = schools[r].getName();%>
<form method="post" action="remove-school-action.jsp">
	<input type="hidden" name="school" value="<%=schoolName%>">
	<input value="Remove" type="submit"> 
</form></td>

<td>
<%=schoolName%></td>
<td>
<form method="post" action="view-school.jsp">
	<input type="hidden" name="school">
	<input value="View" type="submit" value="<%=schoolName%>"> 
</form></td>
         </tr>
         <% } %>
     </tbody>
 </table>
 session.setAttribute("PersonHome", ph);
 session.setAttribute("SchoolHome", sh);
</body>
</html>