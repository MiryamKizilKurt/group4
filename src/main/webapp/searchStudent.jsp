<%-- 
    Document   : searchStudent
    Created on : 10-Feb-2023, 4:59:01 PM
    Author     : 236358
--%>


<%@page import="com.model.User"%>
<%@page import="com.model.dao.UserSqlDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Student</title>
        <link rel="stylesheet" href="css/system.css"/>
        <script type="text/javascript" src="js/index.js"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>
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
                        <a class="nav-link active" href="/group4/LogoutServlet">Logout</a>
                    </li>
                    
                </ul>

            </div>
        </div>
    </nav>
        <table class ="styled-table" id="dataTable" style="margin-left:auto;margin-right:auto;">
            <thead class="thead">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>DoB</th>
                    <th>Role</th>
                </tr>
            </thead>
            <%
                try {

            %>
            <%                UserSqlDAO userSqlDAO = (UserSqlDAO) session.getAttribute("userSqlDAO");
                              int ID = Integer.parseInt(request.getParameter("ID"));
                              User user = userSqlDAO.getUser(ID);
            %>    
            <tr>
                <td ><%=user.getID()%></td>
                <td ><%=user.getName()%></a></td>
                <td ><%=user.getEmail()%></a></td>
                <td ><%=user.getDOB()%></a></td>
                <td ><%=user.getROLE()%></a></td>
            </tr>
            <%
                } catch (Exception e) {
                    System.out.println(e);
                }
            %>

        </table>
        <br>
        <br>
        <br>
    </body>
    
<div class="footer">
    <p>All Rights Reserved © GROUP 4</p>
</div>
</html>
