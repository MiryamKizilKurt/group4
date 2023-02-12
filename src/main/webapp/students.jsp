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

        <title>Students</title>
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
                        <a class="nav-link active" href="about.jsp">About Us</a>
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
                </ul>

            </div>
        </div>
    </nav>

    <div class = "pagetitle">
        <h2 style="font-size:3vw">Our students<sup style="font-size:5vw"> </sup></h2>
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
                width: 90%;
                height: 90%;

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
                    <img src="https://media.licdn.com/dms/image/C5603AQECCxzkUjpRVA/profile-displayphoto-shrink_800_800/0/1637934189728?e=1681344000&v=beta&t=6rZRR28z5P70Vytw2zCTu-bX9RR3uUDElalwwBmAHII" style="width:100%">
                    <div class="container">
                        <h2>Miryam BOOZARJMEHR</h2>
                        <p class="title">SIUA University intern </p>
                        <p>Experimental Physicist who is currently an intern in "Step IT Up Australia" program.</p>
                        <p>miryam.boozarjmehr@university.com</p>
                        <p><a class="button" href="https://www.linkedin.com/in/miryamboz/">Read more</a></p>

                    </div>
                </div>
            </div>


            <div class="column">
                <div class="card">
                    <img src="https://media.licdn.com/dms/image/C5603AQEE3aErw3Xqdw/profile-displayphoto-shrink_800_800/0/1662894262479?e=1681344000&v=beta&t=0pbLpa3isGHHFGItQx4gAUHVB6AsOHIoejhFVC2l770" style="width:100%">
                    <div class="container">
                        <h2>Rashed ELHAM</h2>
                        <p class="title">SIUA University intern</p>
                        <p>Freelancer professional who is currently an intern in "Step IT Up Australia" program.</p>
                        <p>rashed.elham@university.com</p>
                        <p><a class="button" href="https://www.linkedin.com/in/rashedelham/">Read more</a></p>
                    </div>
                </div>
            </div>
            
            
            <div class="column">
                <div class="card">
                    <img src="https://media.licdn.com/dms/image/C5603AQEIP4AxCKcGrA/profile-displayphoto-shrink_800_800/0/1661321445855?e=1681344000&v=beta&t=-VxIucPyz0MccH4--ti3LGxauopPTZ0fGFcAYP3_AZM" style="width:100%">
                    <div class="container">
                        <h2>Priyanka MESHRAM</h2>
                        <p class="title">SIUA University intern</p>
                        <p>Office administrator who is currently an intern in "Step IT Up Australia" program.</p>
                        <p>priyanka.meshram@university.com</p>
                        <p><a class="button" href="https://www.linkedin.com/in/priyanka-meshram-753b1790/">Read more</a></p>
                    </div>
                </div>
            </div>
            
                        <div class="column">
                <div class="card">
                    <img src="https://media.licdn.com/dms/image/D5603AQEYC9q6R1j8UA/profile-displayphoto-shrink_800_800/0/1665457158946?e=1681344000&v=beta&t=7oBf-95GNQcPWsZO_Nj0-xetvVG7cudcRUolI7RhCUU" style="width:100%">
                    <div class="container">
                        <h2>Abdul Bashir OMER</h2>
                        <p class="title">SIUA University intern</p>
                        <p>Mining engineer who is currently an intern in "Step IT Up Australia" program.</p>
                        <p>bashir.omer@university.com</p>
                        <p><a class="button" href="https://www.linkedin.com/in/abdul-bashir-omar-512a85223/">Read more</a></p>
                    </div>
                </div>
            </div>
            
        </div>

    </body>
</html>

<div class="footer">
    <p style="color:#000000">All Rights Reserved © GROUP 4</p>
</div>
