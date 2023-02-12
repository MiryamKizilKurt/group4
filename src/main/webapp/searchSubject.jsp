<%-- 
    Document   : searchSubject
    Created on : 10-Feb-2023, 2:50:46 PM
    Author     : 236356
--%>

<%@page import="com.model.Subject"%>
<%@page import="com.model.dao.SubjectSqlDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Results</title>
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
                            <a class="nav-link active" href="subjectsList.jsp"><i class='fas fa-arrow-circle-left'></i></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="/group4/LogoutServlet">Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <%
            String subjectError = (String) session.getAttribute("subjectError");
        %>
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
                String subjectID = request.getParameter("subjectID");
                if (!subjectID.isEmpty()) {
                    Subject subject = subjectSqlDAO.getSubject(Integer.parseInt(subjectID));
                    if (subject != null) {
            %>    
            <tr>
                <td><%=subject.getID()%></td>
                <td><%=subject.getName()%></a></td>
                <td><%=subject.getDesc()%></a></td>
            </tr>

            <%
            } else {
            %>
            <tr>
                <th></th>
                <th><span class="message"><%= (subjectError != null) ? subjectError : ""%></span></span></th>
                <th></th>
            </tr>
            <%
                }
            } else {
            %>
            <tr>
                <th></th>
                <th><span class="message"><%= (subjectError != null) ? subjectError : ""%></span></span></th>
                <th></th>
            </tr>
            <%
                    }
                } catch (Exception e) {
                    System.out.println(e);
                }
            %>
        </table>
        <br>
        <br>
        <br>
        <%
            subjectError = "";
            session.setAttribute("subjectError", subjectError);
        %>
    </body>
    <div class="footer">
        <p>All Rights Reserved © GROUP 4</p>
    </div>
</html>