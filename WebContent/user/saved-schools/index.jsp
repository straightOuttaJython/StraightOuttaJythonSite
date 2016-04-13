<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- DUONG
This is the Manage Saved Schools page. The view button should direct
to ../view-school.jsp and the remove button should direct 
to remove-school-action.jsp.-->
<%@include file="verify_edit.jsp"%>

<%
School[] schools = theUCObj.manageSchools();
int len = schools.length()
%>

<table border="2" style="width: 481px; height: 65px; ">
     <tbody>
      <% for(int r = 0;r<=len;r++) { %>
         <tr>
<td>
<%String schoolName = schools[r].getName();%>
<form method="post" action="remove_school_action.jsp">
	<input type="hidden" name="school" value="<%=schoolName">
	<input value="Remove" type="submit"> 
</form></td>

<td>
<%=schoolName%></td>
<td>
<form method="post" action="view_expanded_school.jsp">
	<input type="hidden" name="school">
	<input value="View" type="submit" value="<%=schoolName"> 
</form></td>
         </tr>
         <% } %>
     </tbody>
 </table>
</body>
</html>