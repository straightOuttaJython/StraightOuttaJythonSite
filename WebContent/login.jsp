<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <%@include file="/head.jsp"%>
    <body>
    <section id="content" class="login">
        <div id="login">
            <img src="<%=request.getContextPath()%>/images/CMCLogoLogin.png"><br>
            <div class="pane">
            <p><%
            try {
                int errorNum =Integer.parseInt(request.getParameter("Error"));
                if(errorNum != 0) {
                    if(errorNum == 1) {
                        out.println("Please enter a username and password!");
                    } else if(errorNum == 2) {
                        out.println("The account you tried to access is inactive, please contact an admin!");
                    } else if(errorNum == 3) {
                        out.println("Invalid username or password");
                    }else if(errorNum == 4) {
                        out.println("You have successfully logged out.");
                    }
                    else if(errorNum == -4) {
                        out.println("You need to log in!");
                    }
                }
                session.setAttribute("Login Error", -1);
            } catch (NumberFormatException npe) {
               
            }
        %></p>
            <form method="post" action="login-action.jsp" name="Login">
                <dl>
                    <dt>Username:</dt>
                    <dd><input type="text" name="Username"></dd><br>
                    <dt>Password:</dt>
                    <dd><input type="password" name="Password"></dd><br>
                </dl>
                <input type="submit" value="Submit">
            </form>
            </div>
        </div>
    </section>
    <footer class="login">
        <p>Created by Straight Outta Jython, Spring 2016.<br>
        Matt Kounniyom, Duong Do, Alex Seefeldt, Erin Queme</p>
    </footer>
    </body>
</html>