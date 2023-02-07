<%-- 
    Document   : deleteSubject
    Created on : 29-Jan-2023, 9:47:24 AM
    Author     : 236356
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Create Subject</title>
        <link rel="stylesheet" href="css/layout.css"/>
        <script type="text/javascript" src="js/index.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body onload="startTime()">
        <nav class="navbar navbar-dark bg-orange">
            <div class="contianer-fluid">
                <div class="navbar-header">
                    <!--                    <table>
                                            <tr>
                                                <td><h1 class="header">University</h1></td>
                                                <td><a class="button" href="admin-main.jsp">GoBack</a></td>
                                                <td><a class="button" href="index.jsp">Home</a></td>
                                                <td><a class="button" href="/group4/LogoutServlet">logout</a></td>
                                            </tr>                                                              
                                        </table>-->

                </div>
            </div>
        </nav>
        <%
            String subjectError = (String) session.getAttribute("subjectError");
        %>

        <div>
            <form class="" method="POST" action="/group4/DeleteSubjectServlet">
                <table class ="tab">
                    <thead class="thead">
                        <tr>
                            <th></th>
                            <th>Delete Subject</th>
                            <th></th>
                        </tr>
                        
                    </thead>
                    <tr><td class="td">Subject Name</td><td><input class="input" type="text" name="deleteSubjectName" placeholder="Enter subject name to delete" required="deleteSubjectName" /></td></tr>
                    <tr>
                        <td>
                            <input class="button tabButton" type="submit" value="Delete"/>
                            <a class="button tabButton" href="subjectsList.jsp">Close</a>
                        </td>
                    </tr>
                    <tr>
                            <th></th>
                            <th><span class="message"><%= (subjectError != null) ? subjectError : ""%></span></span></th>
                            <th></th>
                    </tr>
                </table>
            </form>
            <%
                subjectError = "";
                session.setAttribute("subjectError", subjectError);
            %>
        </div>
    </body>
</html>
