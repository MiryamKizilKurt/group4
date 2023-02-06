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
        <title>Subject Management</title>
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
                            <td><a class="button" href="index.jsp">Home</a></td>
                            <td><a class="button" href="createSubject.jsp">Create Subject</a></td>
                            <td><a class="button" href="updateSubject.jsp">Update Subject</a></td>
                            <td><a class="button" href="deleteSubject.jsp">Delete Subject</a></td>
                            <td><a class="button" href="/group4/LogoutServlet">Logout</a></td>
                        </tr>                                                              
                    </table>
                </div>
            </div>
            <input class="searchbox" id="nameInput" onkeyup="search()" type="text" placeholder="Search by Name">
        </nav>
        <table class ="tab" id="dataTable">
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
            <% 
                SubjectSqlDAO subjectSqlDAO = (SubjectSqlDAO) session.getAttribute("subjectSqlDAO");
                for (Subject subject : subjectSqlDAO.getSubjects()) {
            %>    
            <tr>
                <td class="td"><%=subject.getID()%></td>
                <td class="td"><%=subject.getName()%></a></td>
                <td class="td"><%=subject.getDesc()%></a></td>
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
        <script>
            function search() {
                var input, filter, table, tr, td, i, txtValue;
                input = document.getElementById("nameInput");
                filter = input.value.toUpperCase();
                table = document.getElementById("dataTable");
                tr = table.getElementsByTagName("tr");
                for (i=0; i < tr.length; i++) {
                    td = tr[i].getElementsByClassName("td")[1];
                    if (td) {
                        txtValue = td.textContent || td.innerText;
                        if (txtValue.toUpperCase().indexOf(filter) > -1) {
                            tr[i].style.display = "";
                        } else {
                            tr[i].style.display = "none";
                        }
                    }
                }
            }
    </script>
    </body>
</html>
