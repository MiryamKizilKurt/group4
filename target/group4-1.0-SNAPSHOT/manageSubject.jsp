<%-- 
    Document   : manageStudent
    Created on : 02-Feb-2023, 9:40:06 AM
    Author     : 236358
--%>

<%@page import="com.model.Subject"%>
<%@page import="com.model.dao.SubjectSqlDAO"%>
<%@include file="footer.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Subject</title>
        <link rel="stylesheet" href="css/layout.css"/>
        <script type="text/javascript" src="js/index.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-dark bg-orange">
            <div class="contianer-fluid">
                <div class="navbar-header">
                    <table>
                        <tr>
                            <td><h1 class="header">University</h1></td>
                            <td><a class="button" href="admin-main.jsp">GoBack</a></td>
                            <td><a class="button" href="createSubject.jsp">Create Subject</a></td>
                            <td><a class="button" href="subjectList.jsp">Subjects List</a></td>
                            <td><a class="button" href="updateStudent.jsp">Update Subject</a></td>
                            <td><a class="button" href="/group4/DeleteSubjectServlet">Delete Subject</a></td>
                            <td><a class="button" href="/group4/LogoutServlet">Logout</a></td>
                        </tr>                                                              
                    </table>
                    
                </div>
            </div>
        </nav>
        <h1></h1>
        <table class ="tab">
            <thead class="thead">
                <tr>
                    <th>Subject ID</th>
                    <th>Subject Name</th>
                </tr>
            </thead>
            <%
                try {

            %>
            <% 
                SubjectSqlDAO subjectSqlDAO = (SubjectSqlDAO) session.getAttribute("subjectSqlDAO");
                for (Subject subject : subjectSqlDAO.getSubjects()) {
            %>    
                    <tr>
                        <td class="td"><%=subject.getID()%></td>
                        <td class="td"><%=subject.getName()%></a></td>
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
    </body>
</html>


