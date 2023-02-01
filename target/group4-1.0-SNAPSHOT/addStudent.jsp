<%-- 
    Document   : addStudent
    Created on : 26-Jan-2023, 11:39:40 AM
    Author     : 236358
--%>

<%@include file="footer.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Add Student</title>
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
                            <td><a class="button" href="admin-main.jsp">GoBack</a></td>
                            <td><a class="button" href="index.jsp">Home</a></td>
                            <td><a class="button" href="/group4/LogoutServlet">logout</a></td>
                        </tr>                                                              
                    </table>
                    
                </div>
            </div>
        </nav>
        <% 
            String error = (String)session.getAttribute("error");
            String emailError = (String)session.getAttribute("emailError");
            String passError = (String)session.getAttribute("passError");
        %>
        
        <div>
            <form class="" method="POST" action="/group4/AdminRegisterServlet">
                <table class ="tab">
                    <thead class="thead">
                        <tr>
                            <th></th>
                            <th>Register Student</th>
                            <th></th>
                            <tr>
                            <th></th>
                            <th><span class="message"><%= (error != null) ? error : "Student Added Successfully" %></span></span></th>
                            <th></th>
                        </tr>
                        </tr>
                    </thead>
                    <tr><td class="td">Name</td><td><input class="input" type="text" name="name" placeholder="Enter your name" required="name" /></td></tr>
                    <tr><td class="td">Email</td><td><input class="input" type="text" name="email" placeholder= "Enter your email" required="email"/><span class="message"><%= (emailError != null) ? emailError: "" %></span></td></tr>
                    <tr><td class="td">Password</td><td><input class="input" type="password" name="password" placeholder= "Enter your password" required="email"/><span class="message"><%= (passError != null) ? passError: "" %></span></td></tr>
                    <tr><td class="td">DOB</td><td><input class="input" type="date" name="dob"/></td></tr>
                    <tr>
                        <td></td>
                        <td>
                            <input class="button tabButton" type="submit" value="Register"/>
                            <a class="button tabButton" href="admin-main.jsp">Cancel</a>

                        </td>
                        
                    </tr>
                </table>
                
            </form>
            <% 

                error = "";
                passError = "";
                emailError = "";
                session.setAttribute("emailError", emailError);
                session.setAttribute("passError", passError);
                session.setAttribute("error", error);
            %>
        </div>
    </body>
</html>
