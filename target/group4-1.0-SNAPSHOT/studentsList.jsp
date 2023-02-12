<%-- 
    Document   : studentsList
    Created on : 26-Jan-2023, 1:06:41 PM
    Author     : 236358
--%>
<%@page import="com.model.dao.UserSqlDAO"%>
<%@page import="com.model.User"%>
<%@page import="com.model.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student list</title>
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
                            <a class="nav-link active" href="admin-main.jsp"><i class='fas fa-arrow-circle-left'></i></a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link active" href="/group4/LogoutServlet">Logout</a>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>
<!--        <div style="margin: auto;">
            <form method="POST" action="/group4/ClickEmailLink">-->
            <table class ="styled-table" style="margin-left:auto;margin-right:auto;">
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
                            <td><%=u.getID()%></td>
                            <td><%=u.getName()%></td>
                            <td><a href="/group4/ClickEmailLink?email=<%=u.getEmail()%>"><%=u.getEmail()%></a></td>
                            <td><%=u.getPassword()%> </td>
                            <td><%=u.getDOB()%></td>
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
<!--            </form>
        </div>-->
      <br>
      <br>
      <br>
    </body>
</html>
<div class="footer">
    <p>All Rights Reserved © GROUP 4</p>
</div>
