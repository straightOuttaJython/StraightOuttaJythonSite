<%@page language="java" import="src.cmc.*"%>
<%
 UserUI theUCObj = (UserUI) session.getAttribute("uc");
 if ((theUCObj==null) || (!theUCObj.isLoggedIn())){
     response.sendRedirect("index.jsp?Error=nullUser");
     return;
 }
%>
