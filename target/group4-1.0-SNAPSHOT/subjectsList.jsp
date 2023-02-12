<%-- 
    Document   : subjectsList
    Created on : 27-Jan-2023, 11:23:50 AM
    Author     : 236356
--%>

<%@page import="com.model.Subject"%>
<%@page import="com.model.dao.SubjectSqlDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Subject management</title>
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
                            <a class="nav-link active" href="admin-main.jsp"><i class='fas fa-arrow-circle-left'></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="createSubject.jsp">Create subject</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="updateSubject.jsp">Update subject</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="deleteSubject.jsp">Delete subject</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="index.jsp">Logout</a>
                </li>
                <li class="nav-item">
                    <td ><input class="input" type="text" pattern="\d*" maxlength="4" name="subjectID" placeholder="Search by ID"></td>
                </li>
                <li class="nav-item">
                    <td><input class="btn btn-dark fs-4" type="submit" value="Search"></td>
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
    <%  SubjectSqlDAO subjectSqlDAO = (SubjectSqlDAO) session.getAttribute("subjectSqlDAO");
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
