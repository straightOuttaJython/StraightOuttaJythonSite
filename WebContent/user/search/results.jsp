<%@ page import="cmc.entity.*" %>
<head>
</head>
<p id="demo"></p>
<p id="column"></p>
<p id="row"></p>
	<table>
	  <tr>
	    <th>Schools</th>
	  </tr>
	<%
		School[] schools = (School[]) session.getAttribute("SearchResults");
		for(int i = 0; i<schools.length;i++) {
	%>
	  <tr id=<%=i%>>
	  	<td id="save">
	  	<form action="results-action.jsp?">
	  		<input type="hidden" id="school" value="<%=schools[i].getName()%>"></input>
	  		<input type="submit" id="save" value="save"></input>
	  	</form>
	  	</td>
	  	<td>
	  		<%out.println(schools[i].getName()); %>
	  	</td>
	  	<td id="view">
	  	<form action="view-school.jsp">
	  		<input type="hidden" id="school" value="<%=schools[i].getName()%>"></input>
	  		<input type="submit" id="view" value="view"></input>
	  	</form>
	  	</td>
	  </tr>
			<%
		}
	%>
	</table>