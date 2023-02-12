<%-- 
    Document   : main
    Created on : 29-Nov-2022, 3:17:50 PM
    Author     : 236358
--%>
<%@page import="com.model.Subject"%>
<%@page import="com.model.dao.EnrollSubSqlDAO"%>
<%@page import="com.model.User"%>
<%@page import="com.model.dao.UserSqlDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Student main</title>
        <link rel="stylesheet" href="css/system.css"/>
        <script type="text/javascript" src="js/index.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

    <a class="site-identity" href="#" <img src = "css/logo.jpg"></a>
</head>
<body>
    <%

        User user = (User) session.getAttribute("user");
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
                        <a class="nav-link active" href="manageStudentUser.jsp">Manage student</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="updateInfoStudent.jsp">Update student info</a>
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
            <th>Welcome <%= user.getName()%></th>
            <th></th>
            </thead>
            <tr><td>Name: </td><td><%= user.getName()%></td></tr>
            <tr><td>email: </td><td><%= user.getEmail()%></td></tr>
            <tr><td>DOB: </td><td><%=user.getDOB()%></td></tr>
        </table>
    </div>


    <div>
            <table class ="styled-table" style="margin-left:auto;margin-right:auto;">
                <thead >
                    <tr>
                        <th>Enroll-ID</th>
                        <th>User-ID</th>
                        <th>Subject-1</th>
                        <th>Subject-2</th>
                        <th>Subject-3</th>
                        <th>Subject-4</th>
                    </tr>
                </thead>

                <%
                    try {

                
                    EnrollSubSqlDAO enrollSubSqlDAO = (EnrollSubSqlDAO) session.getAttribute("enrollSubSqlDAO");

                    for (Subject subject : enrollSubSqlDAO.getEnrolledSubs(user.getID())) {

                %>    
                <tr>
                    <td ><%=subject.getEnrollID()%></td>
                    <td ><%=subject.getUserID()%></td>
                    <td ><%=subject.getSubject1()%></a></td>
                    <td ><%=subject.getSubject2()%></td>
                    <td ><%=subject.getSubject3()%></td>
                    <td ><%=subject.getSubject4()%></td>
                </tr>
                <%

                        }

                    } catch (Exception e) {
                        System.out.println(e);
                    }
                %>

            </table>
    </div>


</body>
</html>
<div class="footer">
    <p>All Rights Reserved © GROUP 4</p>
</div>
