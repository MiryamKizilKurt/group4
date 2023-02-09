
<%@include file="footer.jsp"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>register</title>
        <link rel="stylesheet" href="css/layout.css"/>
        <script type="text/javascript" src="js/index.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>

    <body>
    <body onload="startTime()">
        <nav class="navbar navbar-dark bg-orange">
            <div class="contianer-fluid">
                <div class="navbar-header">
                    <table>
                        <tr>
                            <td><h1 class="header">University</h1></td>
                            <td><a class="button" href="index.jsp">Home</a></td>
                            <td><a class="button" href="login.jsp">Login</a></td>
                        </tr>                                                              
                    </table>
                    
                </div>
            </div>
        </nav>
        <% 
            String error = (String)session.getAttribute("error");
            String emailError = (String)session.getAttribute("emailError");
            String passError = (String)session.getAttribute("passError");
            String dobError = (String)session.getAttribute("dobError");
            String role = (String)session.getAttribute("ROLE");
        %>        
        <div>
            <form class="" method="POST" action="/group4/RegisterServlet">
                <table class ="tab">
                    <thead class="thead">
                        <tr>
                            <th></th>
                            <th>Register User</th>
                            <th></th>
                            <tr>
                            <th></th>
                            <th><span class="message"><%= (error != null) ? error : "" %></span></span></th>
                            <th></th>
                        </tr>
                        </tr>
                    </thead>
                    <td class="td">Role</td>
                            <td>
                                <select class="input" name="ROLE">
                                    <option>Select your role</option>
                                    <option value="student">Student</option>
                                    <option value="admin">Admin</option>
                                </select>
                    </td>
                    <tr><td class="td">Name</td><td><input class="input" type="text" name="name" placeholder="Enter your name" required="name" /></td></tr>
                    <tr><td class="td">Email</td><td><input class="input" type="text" name="email" placeholder= "Enter your email" required="email"/><span class="message"><%= (emailError != null) ? emailError: "" %></span></td></tr>
                    <tr><td class="td">Password</td><td><input class="input" type="password" name="password" placeholder= "Enter your password" required="email"/><span class="message"><%= (passError != null) ? passError: "" %></span></td></tr>
                    <tr><td class="td">DOB</td><td><input class="input" type="date" name="dob" placeholder= "Enter your dob" required="dob"/><span class="message"><%= (dobError != null) ? dobError: "" %></span></td></tr>

                    <tr>
                        
                        <td></td>
                        <td>
                            <input class="button tabButton" type="submit" value="Register"/>
                            <a class="button tabButton" href="index.jsp">Cancel</a>

                        </td>
                        
                    </tr>
                </table>
                
            </form>
            <% 
                error = "";
                passError = "";
                emailError = "";
                dobError = "";
                session.setAttribute("emailError", emailError);
                session.setAttribute("passError", passError);
                session.setAttribute("dobError", dobError);
                session.setAttribute("error", error);
            %>
        </div>
    </body>

</html>

