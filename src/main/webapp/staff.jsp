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

        <title>Staff</title>
        <link rel="stylesheet" href="css/pages.css"/>
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
                        <a class="nav-link active" href="index.jsp"><i class='fas fa-arrow-circle-left'></i></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="about.jsp">About Us</a>
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
        <h2 style="font-size:3vw">Our staff<sup style="font-size:5vw"> </sup></h2>
    </div>


    <jsp:include page="/InitServlet" flush="true"/>
</body>
</html>


<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            html {
                box-sizing: border-box;
            }

            *, *:before, *:after {
                box-sizing: inherit;
            }

            .column {
                float: left;
                width: 33.3%;
                margin-bottom: 16px;
                padding: 0 8px;
            }

            @media screen and (max-width: 650px) {
                .column {
                    width: 100%;
                    display: block;
                }
            }

            .card {
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
                width: 100%;
                height: 100%;

            }

            .container {
                padding: 0 16px;
            }

            .container::after, .row::after {
                content: "";
                clear: both;
                display: table;
            }

            .title {
                color: grey;
            }

            .button {
                border: none;
                outline: 0;
                display: inline-block;
                padding: 8px;
                color: white;
                background-color: #D0956B;
                text-align: center;
                cursor: pointer;
                width: 100%;
            }

            .button:hover {
                background-color: #555;
            }
        </style>
    </head>
    <body>

        <div class="row">
            <div class="column">
                <div class="card">
                    <img src="https://media.licdn.com/dms/image/C5603AQGtmnp6cuuhlA/profile-displayphoto-shrink_800_800/0/1660786264211?e=1681344000&v=beta&t=q1d0KgWdYdkbFLg-sILr-CTxRIpTyPRyeR_XwJ-cWaw" style="width:100%">
                    <div class="container">
                        <h2>Bob BALDACCHINO</h2>
                        <p class="title">ESG Lead </p>
                        <p>Currently ESG Lead which also encompasses our flagship program "Step IT Up Australia".</p>
                        <p>bob.baldacchino@university.com</p>
                        <p><a class="button" href="https://www.linkedin.com/in/bob-baldacchino/">Read more</a></p>

                    </div>
                </div>
            </div>


            <div class="column">
                <div class="card">
                    <img src="https://media.licdn.com/dms/image/C5603AQGq2oCVdz-p1g/profile-displayphoto-shrink_800_800/0/1567667148726?e=1681344000&v=beta&t=YLRzN_oQWuJaVDWs6uo51HEYW15Pt-el4zyU36j4xzc" style="width:100%">
                    <div class="container">
                        <h2>Dr. Georges BOU GHANTOUS</h2>
                        <p class="title">Lecturer and Lead Technical Instructor</p>
                        <p>Technical instructor who works with "Step IT Up Australia" with partnership with Goanna.</p>
                        <p>georges.boughantous@university.com</p>
                        <p><a class="button" href="https://www.linkedin.com/in/georges-bou-ghantous/">Read more</a></p>
                    </div>
                </div>
            </div>


            <div class="column">
                <div class="card">
                    <img src="https://media.licdn.com/dms/image/C5103AQGGNacBEzNUTw/profile-displayphoto-shrink_800_800/0/1572933811139?e=1681344000&v=beta&t=kcgBqP0_sQmg5w189BzQ3Cq4k2p12u4XTdAest9XCNo" style="width:100%">
                    <div class="container">
                        <h2>Ankur SHARMA</h2>
                        <p class="title">Agile Coach</p>
                        <p>Business & Digital Transformation which also is "Step IT Up Australia" Agile Coach.</p>
                        <p>ankur.sharma@university.com</p>
                        <p><a class="button" href="https://www.linkedin.com/in/ankursharma83/">Read more</a></p>
                    </div>
                </div>
            </div>

        </div>

    </body>
</html>

<div class="footer">
    <p style="color:#000000">All Rights Reserved © GROUP 4</p>
</div>
