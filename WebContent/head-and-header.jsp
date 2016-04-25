<% String[] userMenuOptions = {"Search for Schools:/user/search/index.jsp","Manage Schools:/user/saved-schools/index.jsp","Manage Profile:/user/manage-profile/index.jsp"};
   String[] adminMenuOptions = {"Manage Users:/admin/manage-users/index.jsp","Manage Universities:/admin/manage-universities/index.jsp"}; %>
<head>
	<title>Choose My College</title>
	<link rel="icon" href="favicon.ico" type="image/x-icon"/>
	<link rel="stylesheet" type="text/css" href="style.css">
	<link href='https://fonts.googleapis.com/css?family=Merriweather:400,900' rel='stylesheet' type='text/css'>
	<script src="./menuScript.js" type="text/javascript"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<header id="header">
	<img src="./CMCLogo.png" id="header-image"></img>
	<div id="option-holder">
		<img id="menu-button" onclick="dropdown()" src="./chev.png">
		<div id="drop-menu">
		<%  StringBuilder sB = new StringBuilder();
			String[] options = null;
			if (new String(request.getRequestURL()).contains("/user"))
				options = userMenuOptions;
			else if (new String(request.getRequestURL()).contains("/admin"))
				options = adminMenuOptions;
			if (options!=null) {
				for (String op : options) {
					String[] opArray = op.split(":");
					sB.append("<a href=\"");
					sB.append(request.getContextPath()+opArray[1]);
					sB.append("\">");
					sB.append(opArray[0]);
					sB.append("</a><br>");
				}
				sB.substring(0,sB.length()-4);
				out.print(sB);
			}
		%>
		</div>
		<a href="">Logout</a>
	</div
></header>