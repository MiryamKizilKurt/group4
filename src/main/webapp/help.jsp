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
        <title>Help</title>
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
                        <a class="nav-link active" href="students.jsp">Our students</a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link active" href="courses.jsp">Courses we offer</a>
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
        <h2 style="font-size:3vw">We are here to help you<sup style="font-size:5vw"> </sup></h2>
    </div>

    <div class = "textformat">
        <p align="justify"> You have full support of SIUA University.<br clear=right>
            <br clear=right>

            General information <br clear=right> 
            - SIUA University<br clear=right>
            - Three International Towers<br clear=right>
            - Level 24 Tower<br clear=right>
            - 300 Barangaroo Ave<br clear=right>
            - Barangaroo NSW 2000
            <br clear=right>
            <br clear=right>
            <br clear=right>
            <br clear=right>
            - Email address<br clear=right>
            siua2022@university.com


        </p>
    </div>

    <div class="vl"></div>

    <div class = "textformat1">
        <p align="justify">Let's connect on social media</p> 
        <br clear=right>

        Emergency contacts<br clear=right>
        - 000 (for emergencies, or a crime in progress)<br clear=right>
        - 131444 (Police Assistance Line)<br clear=right>
        - 1800 333 000 (Crime Stoppers)<br clear=right>
        - (02) 8355 1422 (Sexual harassment at work)<br clear=right>
        <br clear=right>
        <br clear=right>

        <a href="https://www.facebook.com/profile.php?id=100089953997828" target="_blabk" class="social">
            <ion-icon name="logo-facebook"></ion-icon>    
        </a>

        <a href="https://twitter.com/siua2022" target="_blabk" class="social">
            <ion-icon name="logo-twitter"></ion-icon>
        </a>

        <a href="https://www.instagram.com/siua2022sydney/" target="_blabk" class="social">
            <ion-icon name="logo-instagram"></ion-icon>
        </a>
    </div>



    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

    <jsp:include page="/InitServlet" flush="true"/>
</body>
</html>
<div class="footer">
    <p style="color:#000000">All Rights Reserved © GROUP 4</p>
</div>


