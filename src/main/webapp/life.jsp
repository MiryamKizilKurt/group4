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
        <title>Sydney life</title>
        <link rel="stylesheet" href="css/pages.css"/>
        <script type="text/javascript" src="js/index.js"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

    <a class="site-identity" <img src = "css/logo.jpg"></a>
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
                        <a class="nav-link active" href="index.jsp"><i class='fas fa-arrow-circle-left'></i></a>
                    </li>
                    
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

                </ul>

            </div>
        </div>
    </nav>

    <div class = "pagetitle">
        <h2 style="font-size:3vw">Welcome to Sydney!<sup style="font-size:5vw"> </sup></h2>
    </div>

    <div class = "textformat">
        <p align="justify"> Sydney, the capital of New South Wales, Australia. It is Australia's oldest <br clear=right> and largest city with a population of around 4 million.
            Sydney is built around <br clear=right>a huge harbour and hosts many tourist attractions 
            as well as a number of <br clear=right>beaches, bays and a couple of national parks.<br clear=right>
            The city is divided into North and South by the Sydney Harbour, with both<br clear=right>
            Sydney Harbour Bridge and Tunnel connecting them. Most of the tourist attractions<br clear=right>
            are in the South part of the city, with a large business and residential area in the North.<br clear=right>
            Sydney offers a whole range of great tourist attractions from the world famous Sydney <br clear=right>
            Opera House and Sydney Harbour Bridge to the sandy shores of Bondi Beach. A great <br clear=right> 
            way to get to see as much of Sydney as possible is to take an organised tour such as a <br clear=right> walking tour, cycling tour,
            bus tours, even a helicopter tour.


        </p>

    </div>

    <img src="https://cdn.britannica.com/71/188471-050-CF188A6B/Sydney-Opera-House-Port-Jackson.jpg "width="100%">

    <jsp:include page="/InitServlet" flush="true"/>
</body>
</html>
<div class="footer">
    <p style="color:#000000">All Rights Reserved © GROUP 4</p>
</div>


