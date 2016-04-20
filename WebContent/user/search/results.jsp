<%@ page import="cmc.entity.*" %>
<head>
</head>
<p id="demo"></p>
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
	  		<button onclick="save()">SAVE</button>
	  	</td>
	  	<td>
	  		<%out.println(schools[i].getName()); %>
	  	</td>
	  	<td>
	  		<button onclick="view()">VIEW</button>
	  	</td>
	  </tr>
			<%
		}
	%>
	</table>
<script language="JavaScript">
	function save() {
     	 document.getElementById("demo").innerHTML = "SAVING";
	}
	function view() {
	     document.getElementById("demo").innerHTML = "VIEWING";
	}
</script>