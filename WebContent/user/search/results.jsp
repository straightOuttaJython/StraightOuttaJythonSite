<%@ page import="cmc.entity.*" %>
<table>
  <tr>
    <th>Schools</th>
  </tr>
<%
	School[] schools = (School[]) session.getAttribute("SearchResults");
	for(int i = 0; i<schools.length;i++) {
		%>
  <tr>
  	<td>
  		<button type="button">SAVE</button>
  	</td>
  	<td>
  		<%out.println(schools[i].getName()); %>
  	</td>
  	<td>
  		<button type="button">VIEW</button>
  	</td>
  </tr>
		<%
	}
%>
</table>