<%-- 
    Document   : index
    Created on : 07-Feb-2023, 4:24:52 PM
    Author     : 236349
    Project authors in alphabetical order: Miryam BOOZARJMEHR, Rashed ELHAM, Priyanka MESHRAM, Abdul Bashir Omar
--%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content=="IE=edge"/>
        <meta name="google" value="notranslate"/>
        <title>GROUP4</title>
        <link rel="stylesheet" type="text/css" href="css/menu.css">
        <link rel="stylesheet" type="text/css" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    </head> 


    <style>

        * {
            box-sizing: border-box
        }
        body {
            font-family: Verdana, sans-serif;
            margin: 0
        }
        .mySlides {
            display: none
        }
        img {
            vertical-align: middle;
        }
        .slideshow-container {
            max-width: 1000px;
            position: relative;
            margin: auto;
            top: 100px;
        }
        /* Next & previous buttons for sliding left or right*/
        .prev,
        .next {
            cursor: pointer;
            position: absolute;
            top: 50%;
            width: auto;
            padding: 16px;
            margin-top: -22px;
            color: white;
            font-weight: bold;
            font-size: 18px;
            transition: 0.6s ease;
            border-radius: 0 3px 3px 0;
            user-select: none;
        }
        /* Position the "next button" to the right */
        .next {
            right: 0;
            border-radius: 3px 0 0 3px;
        }
        /* On hover, add a black background color with a little bit see-through */
        .prev:hover,
        .next:hover {
            background-color: rgba(0, 0, 0, 0.8);
        }
        /* Caption text */
        .text {
            color: #ffffff;
            font-size: 15px;
            padding: 8px 12px;
            position: absolute;
            bottom: 8px;
            width: 100%;
            text-align: center;
        }
        /* Number text (1/3 etc) */
        .numbertext {
            color: #ffffff;
            font-size: 14px;
            padding: 8px 12px;
            position: absolute;
            top: 0;
        }
        /* The dots/bullets/indicators */
        .dot {
            cursor: pointer;
            height: 15px;
            width: 15px;
            margin: 0 2px;
            background-color: #999999;
            border-radius: 50%;
            display: inline-block;
            transition: background-color 0.6s ease;
        }
        .active,
        .dot:hover {
            background-color: #111111;
        }
        /* Fading animation */
        .fade {
            -webkit-animation-name: fade;
            -webkit-animation-duration: 1.5s;
            animation-name: fade;
            animation-duration: 1.5s;
        }
        @-webkit-keyframes fade {
            from {
                opacity: .4
            }
            to {
                opacity: 1
            }
        }
        @keyframes fade {
            from {
                opacity: .4
            }
            to {
                opacity: 1
            }
        }
        /* On smaller screens, decrease text size */
        @media only screen and (max-width: 300px) {
            .prev,
            .next,
            .text {
                font-size: 11px
            }
        }
    </style>
</head>

<body>
    <jsp:include page="/InitServlet" flush="true"/>

    <div class="header2">
        <h1>My website name</h1>
    </div>

    <div class="slideshow-container">

        <div class="mySlides fade">
            <img src="https://www.stthomas.edu/_media-library/_images/commencement/stthomas-commencement-undergraduate.jpg" alt="Image" height="565" width="1000">
            <div class = "topcorner" style="color:#cc6600">
                <p><strong>SIUA UNIVERSITY</strong></p>
            </div>            
        </div>

        <div class="mySlides fade">
            <img src="https://www.jansen.com/fileadmin/images/plastic-solutions/services/technologiepartnerschaft-jansen-plastic-solutions.jpg" alt="Image" height="565" width="1000">
            <div class = "topcorner1" style="color:#cc6600">
                <p><strong>Become a skilled full stack developer</strong></p>
            </div> 
        </div>

        <div class="mySlides fade">
            <img src="https://diversityuk.org/wp-content/uploads/2019/06/Handshake.jpg" alt="Image" height="565" width="1000">
            <div class = "topcorner1" style="color:#cc6600">
                <p><strong>Become a skilled full stack developer</strong></p>
            </div> 
        </div>


        <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
        <a class="next" onclick="plusSlides(1)">&#10095;</a>
    </div>
    <br>

</div><nav class="main-menu">

    <div>
        <a class="logo" href="http://startific.com">
        </a> 
    </div> 
    <div class="settings"></div>
    <div class="scrollbar" id="style-1">

        <ul>                

            <li>                                 
                <a href="about.jsp">
                    <i class="fa fa-home fa-lg"></i>
                    <span class="nav-text">About us</span>
                </a>
            </li>  

            <li>                                   
                <a href="staff.jsp">                   
                    <i class="fa fa-user fa-lg"></i>
                    <span class="nav-text">Our Staff</span>
                </a>
            </li>

            <li>                                   
                <a href="students.jsp">                   
                    <i class="fa fa-user fa-lg"></i>
                    <span class="nav-text">Our Students</span>
                </a>
            </li>

            <li>                                   
                <a href="courses.jsp">                   
                    <i class="fa fa-user fa-lg"></i>
                    <span class="nav-text">Courses We Offer</span>
                </a>
            </li>

            <li>                                 
                <a href="register.jsp">
                    <i class="fa fa-user fa-lg"></i>
                    <span class="nav-text">Register</span>
                </a>
            </li>  

            <li>                                 
                <a href="login.jsp" >
                    <i class="fa fa-user fa-lg"></i>
                    <span class="nav-text">Login</span>
                </a>
            </li>   

            <li class="darkerli">
                <a href="https://www.macquarie.com.au/?utm_source=google&utm_medium=search&utm_campaign=all_fp&gclid=CjwKCAiA85efBhBbEiwAD7oLQD3jE0ELqDyZ3dlKwno7djk4w5MDyV7Hcc-2Xc-cNAxSsCaWW0CTohoCFTsQAvD_BwE&gclsrc=aw.ds">
                    <i class="fa fa-desktop fa-lg"></i>
                    <span class="nav-text">Our Industry and Tech partner</span>
                </a>
            </li>


            <li class="darkerli">
                <a href="https://fintechmagazine.com/company-reports/ust-and-step-it-up-changing-lives-by-teaching-tech-skills?fbclid=IwAR0S72lUXD9JIMQ2vBbBbTEjW81Mss9W9oyTneRymAVAOrRuw4R1t_fvD_E">
                    <i class="fa fa-microphone fa-lg"></i>
                    <span class="nav-text">SIUA in the News</span>
                </a>
            </li>


            <li class="darkerli">
                <a href="life.jsp">
                    <i class="fa fa-glass fa-lg"></i>
                    <span class="nav-text">Life in Sydney
                    </span>
                </a>
            </li>

        </ul>

        <li>                                   
            <a href="https://www.ust.com/au">                   
                <i class="fa fa-lightbulb-o fa-lg"></i>
                <span class="nav-text">Our Industry Facilitator</span>
            </a>
        </li>

        <li>

            <a href="help.jsp">
                <i class="fa fa-question-circle fa-lg"></i>
                <span class="nav-text">Help</span>
            </a>
        </li>   


        <ul class="logout">
            <li>
                <a href="contact.jsp">
                    <i class="fa fa-envelope-o fa-lg"></i>
                    <span class="nav-text">
                        Contact 
                    </span>

                </a>
            </li> 

            <li>
                <a href="http://startific.com">
                    <i class="fa fa-heart-o fa-lg"></i>

                    <span class="share"> 


                        <div class="addthis_default_style addthis_32x32_style">

                            <div style="position:absolute;
                                 margin-left: 56px;top:3px;"> 

                                <a href="https://www.facebook.com/sharer/sharer.php?u=" target="_blank" class="share-popup"><img src="http://icons.iconarchive.com/icons/danleech/simple/512/facebook-icon.png" width="30px" height="30px"></a>

                                <a href="https://twitter.com/share" target="_blank" class="share-popup"><img src="https://cdn1.iconfinder.com/data/icons/metro-ui-dock-icon-set--icons-by-dakirby/512/Twitter_alt.png" width="30px" height="30px"></a>

                                <a href="https://www.instagram.com/siua2022sydney/
                                   " target="_blank" class="share-popup"><img src="http://icons.iconarchive.com/icons/danleech/simple/512/google-plus-icon.png" width="30px" height="30px"></a>   

                            </div>
                            <script type="text/javascript">var addthis_config = {"data_track_addressbar": true};</script>
                            <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-4ff17589278d8b3a"></script>

                    </span>
                    <span class="twitter"></span>
                    <span class="google"></span>
                    <span class="fb-like">  
                        <iframe src="//www.facebook.com/plugins/like.php?href=http%3A%2F%2Ffacebook.com%2Fstartific&amp;width&amp;layout=button&amp;action=like&amp;show_faces=false&amp;share=false&amp;height=35" scrolling="no" frameborder="0" style="border:none; overflow:hidden; height:35px;" allowTransparency="true"></iframe>

                    </span>
                    <span class="nav-text">
                    </span>

                </a>

            </li>

        </ul>
</nav>

<script>
                                var slideIndex = 1;
                                showSlides(slideIndex);
                                function plusSlides(n) {
                                    showSlides(slideIndex += n);
                                }
                                function currentSlide(n) {
                                    showSlides(slideIndex = n);
                                }
                                function showSlides(n) {
                                    var i;
                                    var slides = document.getElementsByClassName("mySlides");
                                    var dots = document.getElementsByClassName("dot");
                                    if (n > slides.length) {
                                        slideIndex = 1
                                    }
                                    if (n < 1) {
                                        slideIndex = slides.length
                                    }
                                    for (i = 0; i < slides.length; i++) {
                                        slides[i].style.display = "none";
                                    }
                                    for (i = 0; i < dots.length; i++) {
                                        dots[i].className = dots[i].className.replace(" active", "");
                                    }
                                    slides[slideIndex - 1].style.display = "block";
                                    dots[slideIndex - 1].className += " active";
                                }
</script>
</body>
</html>

<div class="footer">
    <p style="color:#000000">All Rights Reserved © GROUP 4</p>
</div>

