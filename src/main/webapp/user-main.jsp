<%-- 
    Document   : main
    Created on : 29-Nov-2022, 3:17:50 PM
    Author     : 236358
--%>
<%@include file="footer.jsp"%>
<%@page import="com.model.User"%>
<%@page import="com.model.dao.UserSqlDAO"%>
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
    <body onload="startTime()">
        <% 
            
            User user= (User)session.getAttribute("user");
        %>
        <nav class="navbar navbar-dark bg-orange">
            <div class="contianer-fluid">
                <div class="navbar-header">
                    <table>
                        <tr>
                            <td><h1 class="header">University</h1></td>
                            <td><a class="button" href="/group4/MainServlet">Account</a></td>
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
                    <th>Welcome Student</th>
                    <th></th>
                </thead>
                <tr><td>Name: </td><td><%= user.getName()%></td></tr>
                <tr><td>email: </td><td><%= user.getEmail()%></td></tr>
                <tr><td>DOB: </td><td><%=user.getDOB()%></td></tr>
            </table>
        </div>
    </body>
</html>
