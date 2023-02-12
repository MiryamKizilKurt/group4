<%-- 
    Document   : subjectsList
    Created on : 07-Feb-2023, 11:23:50 AM
    Author     : 236349
--%>

<%@page import="com.model.Subject"%>
<%@page import="com.model.dao.SubjectSqlDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Courses</title>
        <link rel="stylesheet" href="css/system.css"/>
        <script type="text/javascript" src="js/index.js"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <a class="site-identity" href="#" <img src = "css/logo.jpg"></a>
</head>
<form method="POST" action="/group4/SearchSubjectServlet">
    <nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
            <div class="container-fluid">
                <a class="navbar-brand" href="#" <img src = "css/background.jpg"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" href="index.jsp"><i class='fas fa-arrow-circle-left'></i></a>
                    </li>
                        
                        <li class="nav-item">
                            <a class="nav-link active" href="index.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="about.jsp">About us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="staff.jsp">Staff</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="students.jsp">Our students</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="courses.jsp">Courses we offer</a>
                        </li>
                        
                        <li class="nav-item">
                            <a class="nav-link active" href="register.jsp">Register</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="login.jsp">Login</a>
                        </li>
                       
                    </ul>

                </div>
            </div>
        </nav>
        
    <table class ="styled-table" id="dataTable" style="margin-left:auto;margin-right:auto;">
        <thead class="thead">
            <tr>
                <th>Subject ID</th>
                <th>Subject Name</th>
                <th>Subject Description</th>
            </tr>

        </thead>
        <%
            try {

        %>

        <% SubjectSqlDAO subjectSqlDAO = (SubjectSqlDAO) session.getAttribute("subjectSqlDAO");
            for (Subject subject : subjectSqlDAO.getSubjects()) {
        %>  

        <tr>
            <td ><%=subject.getID()%></td>
            <td ><%=subject.getName()%></a></td>
            <td ><%=subject.getDesc()%></a></td>
        </tr>
        <%
                }
            } catch (Exception e) {
                System.out.println(e);
            }
        %>
    </table>
</form>
<br>
<br>
<br>
</body>
</html>
<div class="footer">
    <p>All Rights Reserved © GROUP 4</p>
</div>



