
<%@include file="footer.jsp"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account</title>
        <link rel="stylesheet" href="css/layout.css"/>
        <script type="text/javascript" src="js/index.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        
    </head>
    <body onload="startTime()">
        <nav class="navbar navbar-dark bg-orange">
            <div class="contianer-fluid">
                <div class="navbar-header">
                    <table>
                        <tr>
                            
                            <td><h1 class="header">University</h1></td>
                            <td><a class="button" href="about.jsp">About Us</a></td>
                            <td><a class="button" href="register.jsp">Register</a></td>
                            <td><a class="button" href="login.jsp">Login</a></td>                                
                        </tr>
                    </table>  
                </div>
            </div>
        </nav>
        <jsp:include page="/InitServlet" flush="true"/>
    </body>
</html>

