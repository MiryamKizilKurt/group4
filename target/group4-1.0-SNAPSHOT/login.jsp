<%-- 
    Document   : login
    Created on : 26-Jan-2023, 4:24:52 PM
    Project authors in alphabetical order: Miryam BOOZARJMEHR, Rashed ELHAM, Priyanka MESHRAM, Abdul Bashir Omar
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Login</title>
        <link rel="stylesheet" href="css/system.css"/>
        <script type="text/javascript" src="js/index.js"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

    <a class="site-identity" href="#" <img src = "css/logo.jpg"></a>
</head>
<body onload="startTime()">
    <nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
        <div class="container-fluid">
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
                        <a class="nav-link active" href="courses.jsp">Courses we offer</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="login.jsp">Login</a>
                    </li>

                </ul>

            </div>
        </div>
    </nav>
    <h1></h1>
    <%
        String error = (String) session.getAttribute("error");
        String emailError = (String) session.getAttribute("emailError");
        String passError = (String) session.getAttribute("passError");
        String role = (String) session.getAttribute("ROLE");


    %>

  <section class="vh-100 bg-image"
    <a class="navbar-brand"<img src = "css/background.jpg"></a>
  <div class="mask d-flex align-items-center h-50 gradient-custom-3">
    <div class="container h-50">
      <div class="row d-flex justify-content-center align-items-center h-50">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">Login Here</h2>

              <form method="POST" action="/group4/LoginServlet">
                  <div class="form-outline mb-2">
                      <caption><span class="message"><%= (error != null) ? error : ""%></span></caption>
                  </div>
      
                <div class="form-outline mb-2">
                  <input type="email" id="form3Example3cg" class="form-control form-control-lg" name="email" placeholder= "Enter your email" required/>
                  <label class="form-label" for="form3Example3cg">Email</label><caption  class="text-danger"><span class="message"><%= (emailError != null) ? emailError : ""%></span></caption>
                </div>

                <div class="form-outline mb-2">
                  <input type="password" id="form3Example4cg" class="form-control form-control-lg" name="password" placeholder= "Enter your password" required/>
                  <label class="form-label" for="form3Example4cg">Password</label><caption><span class="message"><%= (passError != null) ? passError : ""%></span></caption>
                </div>
            

                <div class="d-flex justify-content-center">
                  <button type="button"
                          class="btn btn-secondary btn-block btn-md gradient-custom-2 text-body" style="margin-right:12px"><input class="btn fs-5 text-white" type="submit" value="login"/></button>
                    
                    <button type="button"
                    class="btn btn-secondary btn-block btn-md gradient-custom-2 text-body" style="margin-left:12px"><a class="btn fs-5 text-white" role="button" href="index.jsp">Cancel</a></button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
                    
    <div id="clock" class="footer"></div>
    <%
        error = "";
        passError = "";
        emailError = "";
        session.setAttribute("emailError", emailError);
        session.setAttribute("passError", passError);
        session.setAttribute("error", error);
    %>
</body>
</html>
<div class="footer">
    <p>All Rights Reserved © GROUP 4</p>
</div>

