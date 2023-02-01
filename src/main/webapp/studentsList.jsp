<%-- 
    Document   : studentsList
    Created on : 26-Jan-2023, 1:06:41 PM
    Author     : 236358
--%>
<%@include file="footer.jsp"%>
<%@page import="com.model.dao.UserSqlDAO"%>
<%@page import="com.model.User"%>
<%@page import="com.model.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student List</title>
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
                            <td><a class="button" href="/group4/LogoutServlet">Logout</a></td>
                        </tr>                                                              
                    </table>
                    
                </div>
            </div>
        </nav>
<!--        <div style="margin: auto;">
            <form method="POST" action="/group4/ClickEmailLink">-->
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
                            <td class="td" name="emailURL" ><a href="/group4/ClickEmailLink?email=<%=u.getEmail()%>"><%=u.getEmail()%></a></td>
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
<!--            </form>
        </div>-->
      <br>
      <br>
      <br>
    </body>
</html>
