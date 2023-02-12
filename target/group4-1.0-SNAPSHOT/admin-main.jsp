<%-- 
    Document   : main
    Created on : 29-Nov-2022, 3:17:50 PM
    Author     : 236358
--%>
<%@page import="com.model.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Admin view</title>
        <link rel="stylesheet" href="css/system.css"/>
        <script type="text/javascript" src="js/index.js"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

    <a class="site-identity" href="#" <img src = "css/logo.jpg"></a>
</head>
    <body>
        <% 
            
            Admin admin= (Admin)session.getAttribute("admin");
        %>
        <nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
        <div class="container-fluid">
            <a class="navbar-brand" href="#" <img src = "css/background.jpg"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    
                    <li class="nav-item">
                        <a class="nav-link active" href="manageStudent.jsp">Manage Student</a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link active" href="subjectsList.jsp">Subject Management</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="/group4/LogoutServlet">Logout</a>
                    </li>
                </ul>

            </div>
        </div>
    </nav>

        <h1></h1>
        <div>
            <table class ="styled-table" style="margin-left:auto;margin-right:auto;">
                <thead class="thead">
                    <th></th>
                    <th>Welcome <%= admin.getName()%></th>
                    <th></th>
                </thead>
                <tr><td>Name: </td><td><%= admin.getName()%></td></tr>
                <tr><td>email: </td><td><%= admin.getEmail()%></td></tr>
                <tr><td>DOB: </td><td><%=admin.getDOB()%></td></tr>
            </table>
        </div>
    </body>
</html>
<div class="footer">
    <p>All Rights Reserved © GROUP 4</p>
</div>