<%-- 
    Document   : welcome
    Created on : 24-Nov-2022, 12:03:24 PM
    Author     : 236356
--%>
<%@include file="footer.jsp"%>
<%@page import="com.model.dao.UserSqlDAO"%>
<%@page import="com.model.Users"%>
<%@page import="com.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>welcome</title>
        <link rel="stylesheet" href="css/layout.css"/>
        <script type="text/javascript" src="js/index.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body onload="startTime()">
        
        <% 
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String dob = request.getParameter("dob");
          
        %>
        <nav class="navbar navbar-dark bg-orange">
            <div class="contianer-fluid">
                <div class="navbar-header">
                    <table>
                        <tr>
                            <td><h1 class="header">University</h1></td>
                            <td><a class="button" href="/labs/MainServlet">Main-Page</a></td>
                            <td><a class="button" href="/labs/LogoutServlet">Logout</a></td>
                        </tr>                                                              
                    </table>
                    
                </div>
            </div>
        </nav>

        <div >
            <table class="center">
                <thead class="thead">
                    <th></th>
                    <th>Welcome</th>
                    <th></th>
                </thead>
                <tr><td>Name: </td><td><%=name%></td></tr>
                <tr><td>email: </td><td><%=email%></td></tr>
                <tr><td>DOB: </td><td><%=dob%></td></tr>
            </table>
        </div>

    </body>
</html>
