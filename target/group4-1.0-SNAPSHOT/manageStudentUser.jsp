<%-- 
    Document   : enrollSubject
    Created on : 02-Feb-2023, 9:51:39 AM
    Author     : 236325
--%>
<%@page import="com.model.dao.EnrollSubSqlDAO"%>
<%@page import="com.model.Subject"%>
<%@page import="com.model.User"%>
<%@page import="com.model.dao.UserSqlDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%><!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Login</title>
        <link rel="stylesheet" href="css/system.css"/>
        <script type="text/javascript" src="js/index.js"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

    <a class="site-identity" href="#" <img src = "css/logo.jpg"></a>
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
                        <a class="nav-link active" href="user-main.jsp"><i class='fas fa-arrow-circle-left'></i></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="enrollSubject.jsp">Enroll subject</a>
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
            <form method="post" action="enrollSubsUpdate.jsp">
            <table class ="styled-table" style="margin-left:auto;margin-right:auto;">
                <thead class="thea1">
                  <tr>
                    <th>Enroll-ID</th>
                    <th>User-ID</th>
                    <th>Subject-1</th>
                    <th>Subject-2</th>
                    <th>Subject-3</th>
                    <th>Subject-4</th>
                    <th>Edit</th>
                    <th>Delete</th>
                  </tr>
                </thead>

                <%
                try
                {

                %>
                <% 
                    EnrollSubSqlDAO enrollSubSqlDAO = (EnrollSubSqlDAO) session.getAttribute("enrollSubSqlDAO");
                    User user= (User)session.getAttribute("user");
                    
                    for(Subject subject: enrollSubSqlDAO.getEnrolledSubs(user.getID())){
                   
                %>    
                         <tr>
                            <td ><%=subject.getEnrollID()%></td>
                            <td ><%=subject.getUserID()%></td>
                            <td ><%=subject.getSubject1()%></a></td>
                            <td ><%=subject.getSubject2()%></td>
                            <td ><%=subject.getSubject3()%></td>
                            <td ><%=subject.getSubject4()%></td>
                            <td ><input class="btn btn-outline-secondary fs-4" type="submit" value="Edit"/></td>
                            <td ><a class="btn btn-outline-secondary fs-4" href="deleteEnrollSub.jsp">Delete</a></td>
                          </tr>
               <%

                   }

                }
                catch(Exception e)
                {
                    System.out.println(e);
                }
                %>

              </table>
            </form>
        </div>
    </body>
</html>
<div class="footer">
    <p>All Rights Reserved © GROUP 4</p>
</div>

