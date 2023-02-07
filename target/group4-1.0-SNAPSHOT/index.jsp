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
        <div class="slideshow-container">
            
            <div class="mySlides fade">
                <img src="https://www.sciencefriday.com/wp-content/uploads/2019/04/ProRes-Neuroetchings.00_00_30_05.Still001.jpg" style="width:100%">
                <div class="text" style="color:#ffffff" font size="+20">Where reality and imagination meet</div>
            </div>
            <div class="mySlides fade">
                <img src="https://wallpaperaccess.com/full/7146177.jpg" style="width:100%">
                <div class="text">New York, USA</div>
            </div>
            <div class="mySlides fade">
                <img src="https://wallpaperaccess.com/full/7146159.jpg" style="width:100%">
                <div class="text">London, Ebgland</div>
            </div>
            <div class="mySlides fade">
                <img src="https://wallpaper.dog/large/5507424.jpg" style="width:100%">
                <div class="text">Sunset in Romania</div>
            </div>
            <div class="mySlides fade">
                <img src="https://wallpaperaccess.com/full/419182.jpg" style="width:100%">
                <div class="text">New York, USA</div>
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
                    <a href="http://startific.com">
                        <i class="fa fa-home fa-lg"></i>
                        <span class="nav-text">Home</span>
                    </a>
                </li>   

                <li>                                 
                    <a href="http://startific.com">
                        <i class="fa fa-user fa-lg"></i>
                        <span class="nav-text">Login</span>
                    </a>
                </li>   


                <li>                                 
                    <a href="http://startific.com">
                        <i class="fa fa-envelope-o fa-lg"></i>
                        <span class="nav-text">Contact</span>
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




                                    <a href="https://plusone.google.com/_/+1/confirm?hl=en&url=_URL_&title=_TITLE_
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




                </li>
                <li class="darkerlishadow">
                    <a href="http://startific.com">
                        <i class="fa fa-clock-o fa-lg"></i>
                        <span class="nav-text">News</span>
                    </a>
                </li>

                <li class="darkerli">
                    <a href="http://startific.com">
                        <i class="fa fa-desktop fa-lg"></i>
                        <span class="nav-text">Technology</span>
                    </a>
                </li>

                <li class="darkerli">
                    <a href="http://startific.com">
                        <i class="fa fa-plane fa-lg"></i>
                        <span class="nav-text">Travel</span>
                    </a>
                </li>

                <li class="darkerli">
                    <a href="http://startific.com">
                        <i class="fa fa-shopping-cart"></i>
                        <span class="nav-text">Shopping</span>
                    </a>
                </li>

                <li class="darkerli">
                    <a href="http://startific.com">
                        <i class="fa fa-microphone fa-lg"></i>
                        <span class="nav-text">Film & Music</span>
                    </a>
                </li>

                <li class="darkerli">
                    <a href="http://startific.com">
                        <i class="fa fa-flask fa-lg"></i>
                        <span class="nav-text">Web Tools</span>
                    </a>
                </li>

                <li class="darkerli">
                    <a href="http://startific.com">
                        <i class="fa fa-picture-o fa-lg"></i>
                        <span class="nav-text">Art & Design</span>
                    </a>
                </li>

                <li class="darkerli">
                    <a href="http://startific.com">
                        <i class="fa fa-align-left fa-lg"></i>
                        <span class="nav-text">Magazines
                        </span>
                    </a>
                </li>

                <li class="darkerli">
                    <a href="http://startific.com">
                        <i class="fa fa-gamepad fa-lg"></i>
                        <span class="nav-text">Games</span>
                    </a>
                </li>

                <li class="darkerli">
                    <a href="http://startific.com">
                        <i class="fa fa-glass fa-lg"></i>
                        <span class="nav-text">Life & Style
                        </span>
                    </a>
                </li>

                <li class="darkerlishadowdown">
                    <a href="http://startific.com">
                        <i class="fa fa-rocket fa-lg"></i>
                        <span class="nav-text">Fun</span>
                    </a>
                </li>


            </ul>


            <li>

                <a href="http://startific.com">
                    <i class="fa fa-question-circle fa-lg"></i>
                    <span class="nav-text">Help</span>
                </a>
            </li>   


            <ul class="logout">
                <li>
                    <a href="http://startific.com">
                        <i class="fa fa-lightbulb-o fa-lg"></i>
                        <span class="nav-text">
                            BLOG 
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
<%@include file="footer.jsp"%>
