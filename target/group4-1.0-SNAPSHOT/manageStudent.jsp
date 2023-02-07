<%-- 
    Document   : manageStudent
    Created on : 02-Feb-2023, 9:40:06 AM
    Author     : 236358
--%>

<%@page import="com.model.Users"%>
<%@page import="com.model.dao.UserSqlDAO"%>
<%@page import="com.model.User"%>
<%@include file="footer.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Student</title>
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
                            <td><a class="button" href="addStudent.jsp">Add Student</a></td>
                            <td><a class="button" href="studentsList.jsp">Students List</a></td>
                            <td><a class="button" href="/group4/LogoutServlet">Logout</a></td>
                        </tr>                                                              
                    </table> 
                </div>
            </div>
        </nav>
        <h1></h1>
        <div>
            <table class ="tab">
                <thead class="thead">
                  <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>email</th>
                    <th>password</th>
                    <th>DoB</th>
<!--                    <th>Modify</th>-->
                  </tr>
                </thead>

                <%
                try
                {

                %>
                <% 
                    UserSqlDAO userSqlDAO = (UserSqlDAO) session.getAttribute("userSqlDAO");
                    Users users = new Users();    
                    users.addAll(userSqlDAO.getUsers());
                   
                    for(User u: userSqlDAO.getUsers()){
                %>    
                         <tr>
                            <td class="td"><%=u.getID()%></td>
                            <td class="td"><%=u.getName()%></td>
                            <td class="td"><%=u.getEmail()%></a></td>
                            <td class="td"><%=u.getPassword()%> </td>
                            <td class="td"><%=u.getDOB()%></td>
                            <!--<td class="td"><input class="button" type="submit" value="Modify"/></td>-->
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
        </div>
    </body>
</html>

