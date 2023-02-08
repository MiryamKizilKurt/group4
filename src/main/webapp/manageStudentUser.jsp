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
        <title>User-Main</title>
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
                            <td><a class="button" href="user-main.jsp">Go-Back</a></td>
                            <td><a class="button" href="enrollSubject.jsp">Enroll Subject</a></td>
                            <td><a class="button" href="mySubjects.jsp">My Subjects</a></td>
                            <td><a class="button" href="/group4/LogoutServlet">Logout</a></td>
                        </tr>                                                              
                    </table>
                </div>
            </div>
        </nav>
        <h1></h1>
        <div>
            <form method="post" action="enrollSubsUpdate.jsp">
            <table class ="tab">
                <thead class="thea1">
                  <tr>
                    <th>Enroll-ID</th>
                    <th>User-ID</th>
                    <th>Subject-1</th>
                    <th>Subject-2</th>
                    <th>Subject-3</th>
                    <th>Subject-4</th>
                    <th>Modify</th>
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
                            <td class="td"><%=subject.getEnrollID()%></td>
                            <td class="td"><%=subject.getUserID()%></td>
                            <td class="td"><%=subject.getSubject1()%></a></td>
                            <td class="td"><%=subject.getSubject2()%></td>
                            <td class="td"><%=subject.getSubject3()%></td>
                            <td class="td"><%=subject.getSubject4()%></td>
                            <td class="td"><input class="button" type="submit" value="Modify"/></td>
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
