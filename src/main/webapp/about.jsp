<%-- 
    Document   : about
    Created on : 10-Feb-2023, 11:13:26 AM
    Author     : 236349
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About us</title>
        <link rel="stylesheet" href="css/pages.css"/>
        <script type="text/javascript" src="js/index.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        
        <a class="site-identity" href="#" <img src = "css/logo.jpg"></a>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="#" <img src = "css/background.jpg"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" href="index.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="about.jsp">About us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="staff.jsp">Staff</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="subjectsList.jsp">Courses</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="students.jsp">Our students</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="register.jsp">Register</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="login.jsp">Login</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="/group4/LogoutServlet">Logout</a>
                        </li>
                       
                    </ul>

                </div>
            </div>
        </nav>
        
        <div class = "pagetitle">
            <h2 style="font-size:3vw">G'day, Welcome to SIUA University!<sup style="font-size:5vw"> </sup></h2>
        </div>
        
        <div class = "textformat">
            <p align="justify"> The SIUA University is a global center for teaching, learning and research<br clear=right>, consistently ranked among the top public universities in Australia.<br clear=right>
                SIUA University embraces innovation and transforms ideas into action.<br clear=right> Since 1998, SIUA University has been opening doors of opportunity<br> for people with the curiosity, drive and vision to shape a better world.</p>
        </div>
        
        <div class="vl"></div>
        
        <div class = "textformat1">
            <p align="justify"> We offer a holistic approach to help businesses uncover opportunities <br clear=right> to achieve growth, reduce costs to mitigate risks, or to be able to reinvest <br clear=right> in their next moonshot projects.
            The first step we take whenever we <br clear=right> engage any clients is to understand the business intimately through <br clear=right> these four themes.</p> 
        </div>
        
        <jsp:include page="/InitServlet" flush="true"/>
    </body>
</html>
<div class="footer">
    <p style="color:#000000">All Rights Reserved © GROUP 4</p>
</div>


