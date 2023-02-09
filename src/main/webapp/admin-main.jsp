<%-- 
    Document   : main
    Created on : 29-Nov-2022, 3:17:50 PM
    Author     : 236358
--%>
<%@page import="com.model.Admin"%>
<%@include file="footer.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User-Main</title>
        <link rel="stylesheet" href="css/layout.css"/>
        <script type="text/javascript" src="js/index.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>
        <% 
            
            Admin admin= (Admin)session.getAttribute("admin");
        %>
        <nav class="navbar navbar-dark bg-orange">
            <div class="contianer-fluid">
                <div class="navbar-header">
                    <table>
                        <tr>
                            <td><h1 class="header">University</h1></td>
                            <td><a class="button" href="register.jsp">Add Student</a></td>
                            <td><a class="button" href="studentsList.jsp">Student List</a></td>
                            <td><a class="button" href="subjectsList.jsp">Subject Management</a></td>
                            <td><a class="button" href="/group4/LogoutServlet">Logout</a></td>
                        </tr>                                                              
                    </table>
                    
                </div>
            </div>
        </nav>
        <h1></h1>
        <div>
            <table class="center">
                <thead class="thead">
                    <th></th>
                    <th>Welcome Admin</th>
                    <th></th>
                </thead>
                <tr><td>Name: </td><td><%= admin.getName()%></td></tr>
                <tr><td>email: </td><td><%= admin.getEmail()%></td></tr>
                <tr><td>DOB: </td><td><%=admin.getDOB()%></td></tr>
            </table>
        </div>
    </body>
</html>
