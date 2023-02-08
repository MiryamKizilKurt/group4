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
<%@include file="footer.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Enrolled Subjects</title>
        <link rel="stylesheet" href="css/layout.css"/>
        <script type="text/javascript" src="js/index.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>
        <% 
            
            //User user= (User)session.getAttribute("user");
        %>
        <nav class="navbar navbar-dark bg-orange">
            <div class="contianer-fluid">
                <div class="navbar-header">
                    <table>
                        <tr>
                            <td><h1 class="header">University</h1></td>
                            <td><a class="button" href="manageStudentUser.jsp">GoBack</a></td>
                            
                            <td><a class="button" href="/group4/LogoutServlet">Logout</a></td>
                        </tr>                                                              
                    </table>
                    
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
            <form class="" method="POST" action="/group4/UpdateEnrollSubServlet">
                <table class ="tab">
                    <thead class="thead">
                        <tr>
                            <th></th>
                            <th>Update Enrolled Subjects</th>
                            <tr><td>User:</td><td> <%= user.getID() %> </td></tr>
                            <th></th>
                            <tr>
                            <th></th>
                            <th><span class="message"><%= (subjectError != null) ? subjectError : "" %></span></span></th>
                            <th></th>
                        </tr>
                    </thead>
                        <tr>
                            <td class="td">Subject One</td>
                            <td>
                                <select name="subject1" class="input">
                                    <%
                                        for(Subject subject: enrollSubSqlDAO.getEnrolledSubs(user.getID())){   
                                    %>
                                            <option><%=subject.getSubject1()%></option>
                                    <%}%>
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
                                    <%
                                        for(Subject subject: enrollSubSqlDAO.getEnrolledSubs(user.getID())){   
                                    %>
                                            <option><%=subject.getSubject2()%></option>
                                    <%}%>
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
                        <td class="td">Subject Three</td>
                            <td>
                                <select name="subject3" class="input">
                                    <%
                                        for(Subject subject: enrollSubSqlDAO.getEnrolledSubs(user.getID())){   
                                    %>
                                            <option><%=subject.getSubject3()%></option>
                                    <%}%>
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
                        <td class="td">Subject Four</td>
                            <td>
                                <select name="subject4" class="input">
                                    <%
                                        for(Subject subject: enrollSubSqlDAO.getEnrolledSubs(user.getID())){   
                                    %>
                                            <option><%=subject.getSubject4()%></option>
                                    <%}%>
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
                            <input class="button tabButton" type="submit" value="Update"/>
                            <a class="button tabButton" href="index.jsp">Cancel</a>

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

