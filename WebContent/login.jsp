<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>CMC-Login</title>
	</head>
	<body>
	<!-- MATT
	calls login-action.jsp-->
		<form method="post" action="login-action.jsp" name="Login"><br>
				User Login
				<br>
				<%
					try {
						int errorNum =Integer.parseInt(request.getParameter("Error"));
						if(errorNum != 0) {
							if(errorNum == 1) {
								out.println("	Please enter a username and password!");
							} else if(errorNum == 2) {
								out.println("	The account you tried to access is inactive, please contact an admin!");
							} else if(errorNum == 3) {
								out.println("	Invalid username or password");
							}else if(errorNum == -4) {
								out.println("	You need to LOG-IN!");
							}
						}
						session.setAttribute("Login Error", -1);
					} catch (NumberFormatException npe) {
						
					}
				%>
			<br>
			<br>
				Username:
				<input name="Username" value=""><br>
			<br>
				Password:
				<input type="password" name="Password"><br>
			<br>
			<br>
				<input name="Submit" value="SUBMIT" type="submit"><br>
				<input name="Reset" value="RESET" type="reset"><br>
		</form>
	</body>
</html>