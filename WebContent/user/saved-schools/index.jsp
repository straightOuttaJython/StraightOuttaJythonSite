<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.ui.*" import="cmc.home.*" import="cmc.entity.*"%>
<%@include file="/verify-login.jsp"%>
<%	
	UserUI ui = (UserUI) session.getAttribute("UserUI");
	School[] schools = ui.manageSchools();
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


<table border="2" style="width: 481px; height: 65px; ">
     <tbody>
      <% if (schools!=null) {
      		for(int r = 0;r<=schools.length;r++) { %>
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
	<input type="hidden" name="school" value="<%=schoolName%>">
	<input value="View" type="submit"> 
</form></td>
         </tr>
         <% } 
         }
         	%>
     </tbody>
 </table>
</body>
</html>