
<%@include file="footer.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="css/layout.css"/>
        <script type="text/javascript" src="js/index.js"></script>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body onload="startTime()">
        <nav class="navbar navbar-dark bg-orange">
            <div class="contianer-fluid">
                <div class="navbar-header">
                    <table>
                        <tr>
                            <td><h1 class="header">University</h1></td>
                            <td><a class="button" href="index.jsp">Home</a></td>
                        </tr>                                                              
                    </table>

                </div>
            </div>
        </nav>
        <h1></h1>
        <%
            String error = (String) session.getAttribute("error");
            String emailError = (String) session.getAttribute("emailError");
            String passError = (String) session.getAttribute("passError");
            String role = (String) session.getAttribute("ROLE");


        %>
        <div>
            <form method="POST" action="/group4/LoginServlet">
                <table class ="tab">
                    <thead class="thead">

                        <tr>
                            <th></th>
                            <th>Login Page</th>
                            <th></th>
                        </tr>
                        <tr>
                            <th></th>
                            <th><span class="message"><%= (error != null) ? error : ""%></span></span></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                    <tr>
                    <td class="td">Role</td>
                    <td>
                        <select class="input">
                            <option>Select your role</option>
                            <option name="student">Student</option>
                            <option name="admin">Admin</option>
                        </select>
                    </td>
                    </tr>
                    <tr><td class="td">Email </td><td><input class="input" type="text" name="email" placeholder="Enter your email" required="email"/><span  class="message"><%= (emailError != null) ? emailError : ""%></span></td></tr>
                    <tr><td class="td">Password </td><td><input class="input" type="password" name="password" placeholder="Enter your password" required="password"/><span class="message"><%= (passError != null) ? passError : ""%></span></td></tr>
                    <tr>
                        <td></td>
                        <td>
                            <a class="button tabButton" href="index.jsp">Cancel</a>
                            <input class="button tabButton" type="submit" value="Login"/>
                        </td>
                    </tr>
                    </tbody>
                </table>

            </form>

        </div>
        <div id="clock" class="footer"></div>
        <%
            error = "";
            passError = "";
            emailError = "";
            session.setAttribute("emailError", emailError);
            session.setAttribute("passError", passError);
            session.setAttribute("error", error);
        %>
    </body>
</html>

