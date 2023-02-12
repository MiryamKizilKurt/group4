<%-- 
    Document   : enrollSubject
    Created on : 02-Feb-2023, 9:51:39 AM
    Author     : 236325
--%>

<%@page import="com.model.dao.EnrollSubSqlDAO"%>
<%@page import="com.model.User"%>
<%@page import="com.model.Subjects"%>
<%@page import="com.model.Subject"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Student main</title>
        <link rel="stylesheet" href="css/system.css"/>
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <script type="text/javascript" src="js/index.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

    </head>
    <body>
        <% 
            
            //User user= (User)session.getAttribute("user");
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
                        <a class="nav-link active" href="manageStudentUser.jsp"><i class='fas fa-arrow-circle-left'></i></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="/group4/LogoutServlet">Logout</a>
                    </li>
                </ul>

            </div>
        </div>
    </nav>
        <h1></h1>
        <% 
            EnrollSubSqlDAO enrollSubSqlDAO = (EnrollSubSqlDAO) session.getAttribute("enrollSubSqlDAO");
            String subjectError = (String) session.getAttribute("subjectError");
            User user = (User) session.getAttribute("user");         
        %>
        
        <div>
            <form method="POST" action="/group4/EnrollSubjectServlet">
            <table class ="styled-table" style="margin-left:auto;margin-right:auto;">
                    <thead>
                        <tr>
                            <th></th>
                            <th>Enroll Subject</th>                            
                            <th><span class="message"><%= (subjectError != null) ? subjectError : "" %></span></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tr><td>Student ID </td><td> <%= user.getID() %> </td></tr>
                    <tr>
                        <td class="td">Subject One</td>
                        <td>
                            <select name="subject1" class="input">
                                <option>Select Subject One</option>
                                <%
                                    for (Subject subject : enrollSubSqlDAO.getSubjects()) {

                                %>
                                    <option><%=subject.getName()%></option>
                                <%}%>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="td">Subject Two</td>
                        <td>
                            <select name="subject2" class="input">
                                <option>Select Subject Two</option>
                                <%
                                    for (Subject subject : enrollSubSqlDAO.getSubjects()) {
                                %>
                                    <option><%=subject.getName()%></option>
                                <%}%>
                            </select>
                        </td>
                    </tr>
                  
                    <tr>
                        <td class="td">Subject Three</td>
                        <td>
                            <select name="subject3" class="input">
                                <option>Select Subject Three</option>
                                <%
                                    for (Subject subject : enrollSubSqlDAO.getSubjects()) {
                                %>
                                    <option><%=subject.getName()%></option>
                                <%}%>
                            </select>
                        </td>
                     </tr>
                   
                    <tr>
                        <td class="td">Subject Four</td>
                        <td>
                            <select name="subject4" class="input">
                                <option>Select Subject Four</option>
                                <%
                                    for (Subject subject : enrollSubSqlDAO.getSubjects()) {
                                %>
                                    <option><%=subject.getName()%></option>
                                <%}%>
                            </select>
                        </td>
                    </tr>
                    <tr>
                    
                    <tr>
                        <td></td>
                        <td>
                        <input class="btn btn-outline-secondary fs-4" type="submit" value="Enroll"/>
                        <a class="btn btn-outline-secondary fs-4" href="manageStudentUser.jsp">Cancel</a>
                        </td>
                    </tr>
                </table>
                
            </form>
            <% 

                subjectError = "";               
                session.setAttribute("subjectError", subjectError);
            %>
    </body>
</html>
<div class="footer">
    <p>All Rights Reserved © GROUP 4</p>
</div>
