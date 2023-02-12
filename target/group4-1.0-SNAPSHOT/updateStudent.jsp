<%-- 
    Document   : update
    Created on : 26-Jan-2023, 1:48:13 PM
    Author     : 236358
--%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.model.dao.UserSqlDAO"%>
<%@page import="com.model.Users"%>
<%@page import="com.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Update student</title>
        <link rel="stylesheet" href="css/system.css"/>
        <script type="text/javascript" src="js/index.js"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

    <a class="site-identity" href="#" <img src = "css/logo.jpg"></a>
</head>
<body >

    <nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
        <div class="container-fluid">
            <a class="navbar-brand" href="#" <img src = "css/background.jpg"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" href="manageStudent.jsp"><i class='fas fa-arrow-circle-left'></i></a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link active" href="index.jsp">Home</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link active" href="index.jsp">Logout</a>
                    </li>
                </ul>

            </div>
        </div>
    </nav>

    <%
        User user = (User) session.getAttribute("user");
        String email = request.getParameter("email");
        String submitted = request.getParameter("submitted");
        String submit = (String) session.getAttribute("submit");
        String passError = (String) session.getAttribute("passError");
        String nameError = (String) session.getAttribute("nameError");
        String dobError = (String) session.getAttribute("dobError");
        String role = (String) session.getAttribute("ROLE");

    %>
    <div style="margin: auto;">
        <form method="POST" action="/group4/UpdateStudentServlet">
            <table class ="styled-table" style="margin-left:auto;margin-right:auto;">

                <thead class="thead">
                    <tr>
                        <th></th>
                        <th>Edit student </th>
                        <th></th>
                    </tr>
                    <tr>
                        <th></th>
                        <th><span class="message"><%= (submit != null) ? submit : ""%></span></th>
                        <th></th>
                    </tr>
                </thead>

                <tr><td class="td">ID </td><td><input class="input" type="text" name="ID" value="<%= user.getID()%>" readonly="true" /></td></tr>
                <tr><td class="td">Name</td><td><input class="input" type="text" name="name" value="<%= user.getName()%>" /><span class="message"><%= (nameError != null) ? nameError : ""%></span></td></tr>
                <tr><td class="td">Email</td><td><input class="input" type="text" name="email" value="<%= user.getEmail()%>" readonly="true"/></td></tr>
                <tr><td class="td">Password</td><td><input class="input" type="password" name="password" value="<%= user.getPassword()%>" /><span class="message"><%= (passError != null) ? passError : ""%></span></td></tr></td></tr>
                <tr><td class="td">DOB</td><td><input class="input" type="date" name="dob" value="<%= user.getDOB()%>"/><span class="message"><%= (dobError != null) ? dobError : ""%></span></td></tr>
                <tr><td class="td">Role</td><td><input class="input" type="text" name="ROLE" value="<%= user.getROLE()%>" readonly="true"/></td></tr>

                <tr><td><input class="input" type="hidden" name="submitted" value="submitted" %></td></tr>
                <tr>
                    
                    <td><a class="btn btn-outline-secondary fs-4" href="manageStudent.jsp">Student List</a></td>
                                      
                    <td>
                        <input class="btn btn-outline-secondary fs-4" type="submit" value="Update" />
                        <a class="btn btn-outline-secondary fs-4" href="delete.jsp" >Delete</a>                        
                </tr>
            </table>
        </form>
        <%

            nameError = "";
            passError = "";
            dobError = "";
            submit = "";
            session.setAttribute("passError", passError);
            session.setAttribute("nameError", nameError);
            session.setAttribute("dobError", dobError);
            session.setAttribute("submit", submit);

        %>
    </div>
</body>
</html>
<div class="footer">
    <p>All Rights Reserved © GROUP 4</p>
</div>
