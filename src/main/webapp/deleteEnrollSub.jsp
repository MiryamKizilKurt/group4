<%-- 
    Document   : deleteEnrollSub
    Created on : 09-Feb-2023, 9:19:12 PM
    Author     : 236325
--%>

<%@page import="com.model.Subject"%>
<%@page import="com.model.User"%>
<%@page import="com.model.dao.EnrollSubSqlDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Enrolled Subject</title>
        <link rel="stylesheet" href="css/system.css"/>
        <script type="text/javascript" src="js/index.js"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
  
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
        <div>
            <%
                try
                {

                    EnrollSubSqlDAO enrollSubSqlDAO = (EnrollSubSqlDAO) session.getAttribute("enrollSubSqlDAO");
                    User user= (User)session.getAttribute("user");
                    String delelteEnrollSubError = (String) session.getAttribute("delelteEnrollSubError");
                    
                   
                %>
                <table class ="styled-table" style="margin-left:auto;margin-right:auto";>
                    <thead class="thead">
                                <tr>
             
                                    <th>Delete Enrolled Subjects</th>
                               
                                    <th><span class="message"><%= (delelteEnrollSubError != null) ? delelteEnrollSubError : "" %></span></span></th>
                       
                                </tr>
                     </thead>
                         <tr>
                             <td class="td">User ID:</td>
                   
                             <td class="td"> <%= user.getID() %> </td>
                         </tr>
                         <%for(Subject subject: enrollSubSqlDAO.getEnrolledSubs(user.getID())){%>
                         <tr>
                            <td class="td"><%=subject.getSubject1()%></td>
                            <td class="td"><a class="btn btn-outline-secondary fs-4" name="subject1" href="/group4/DeleteEnrollSubServlet?subject1=<%=subject.getSubject1()%>">Delete</a></td>
                         </tr>
                         <tr>
                            <td class="td"><%=subject.getSubject2()%></td>
                            <td class="td"><a class="btn btn-outline-secondary fs-4" name="subject2" href="/group4/DeleteEnrollSubServlet?subject2=<%=subject.getSubject2()%>">Delete</a></td>
                         </tr>
                  
                         <tr>
                            <td class="td"><%=subject.getSubject3()%></td>
                            <td class="td"><a class="btn btn-outline-secondary fs-4" name="subject3" href="/group4/DeleteEnrollSubServlet?subject3=<%=subject.getSubject3()%>">Delete</a></td>
                        </tr>
                        
                        <tr>
                            <td class="td"><%=subject.getSubject4()%></td>
                            <td class="td"><a class="btn btn-outline-secondary fs-4" name="subject4" href="/group4/DeleteEnrollSubServlet?subject4=<%=subject.getSubject4()%>">Delete</a></td>
                        </tr>
                        <%}%>
                        
                <% 

                    delelteEnrollSubError = "";               
                    session.setAttribute("delelteEnrollSubError", delelteEnrollSubError);
                %>
               <%

                }
                catch(Exception e)
                {
                    System.out.println(e);
                }

                
                %>
                

              </table>
                
        </div>
            
<div class="footer">
    <p>All Rights Reserved © GROUP 4</p>
</div>
</html>
