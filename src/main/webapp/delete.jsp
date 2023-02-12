<%-- 
    Document   : delete
    Created on : 29-Jan-2023, 9:52:39 AM
    Author     : 236358
--%>
<%@page import="com.model.dao.AdminSqlDAO"%>
<%@page import="com.model.dao.UserSqlDAO"%>
<%@page import="com.model.Users"%>
<%@page import="com.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete</title>
        <link rel="stylesheet" href="css/system.css"/>
        <script type="text/javascript" src="js/index.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body onload="startTime()">
        <nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
        <div class="container-fluid">
            <a class="navbar-brand" href="#" <img src = "css/background.jpg"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" href="index.jsp">Home</a>
                    </li>
                 
                    <li class="nav-item">
                        <a class="nav-link active" href="/group4/LogoutServlet">Logout</a>
                    </li>
                </ul>

            </div>
        </div>
    </nav>
        <%
            User user;
            UserSqlDAO userSqlDAO = (UserSqlDAO) session.getAttribute("userSqlDAO");
            String emailView = (String) session.getAttribute("emailView");
            if(emailView != null){
                user = userSqlDAO.getUser(emailView);
            }else{
                user = (User) session.getAttribute("user");
            }
            if (user != null) {
                userSqlDAO.delete(user.getID());
            }
        %>
       
        <% if(user != null){%>
            <h2 class="center"><%= user.getName()%> Record has been deleted!
                <%if(emailView != null) {%>
                   <a class="nav-link active" href="studentList.jsp"><i class='fas fa-arrow-circle-left'></i></a>
                <%}%>
            </h2>
        <%}else{%>
            <h2 class="center"> Record has been deleted!</h2>
            <%session.invalidate();%>
        <%}%>
        

    </body>
<div class="footer">
    <p>All Rights Reserved © GROUP 4</p>
</div>
</html>
