<%-- 
    Document   : updateSubject
    Created on : 28-Jan-2023, 6:44:53 PM
    Author     : 236356
--%>

<%@include file="footer.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Update Subject</title>
        <link rel="stylesheet" href="css/layout.css"/>
        <script type="text/javascript" src="js/index.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body onload="startTime()">
        <nav class="navbar navbar-dark bg-orange">
            <div class="contianer-fluid">
                <div class="navbar-header">
                </div>
            </div>
        </nav>
        <%
            String subjectError = (String) session.getAttribute("subjectError");
        %>
        <div>
            <form class="" method="POST" action="/group4/UpdateSubjectServlet">
                <table class ="tab">
                    <thead class="thead">
                        <tr>
                            <th></th>
                            <th>Update Subject</th>
                            <th></th>
                        </tr>
                        
                    </thead>
                    <tr><td class="td">Old Subject Name</td><td><input class="input" type="text" name="oldSubjectName" placeholder="Enter old subject name" required="subjectName" /></td></tr>
                    <tr><td class="td">New Subject Name</td><td><input class="input" type="text" name="newSubjectName" placeholder="Enter new subject name" required="subjectName" /></td></tr>
                    <tr><td class="td">New Subject Description</td><td><input class="input" type="text" name="newSubjectDesc" placeholder="Enter description" required="newSubjectDesc" /></td></tr>
                    <tr>
                        <td>
                            <input class="button tabButton" type="submit" value="Save Changes"/>
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

