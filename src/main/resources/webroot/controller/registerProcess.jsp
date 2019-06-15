<%@ page import="org.eclipse.jetty.demo.LoginUtil" %>
include page="webroot.tools.h2db_connection"
<html>

<head>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <title>Login</title>
    <link href="../views/static/main.css" media="all" rel="stylesheet" type="text/css"/>

    <link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700" rel="stylesheet">
    <link rel="stylesheet" href="style.css" />
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>

<body>
<div class="container">
    <header class="blog-header py-3">
        <div class="row flex-nowrap justify-content-between align-items-center">
            <div class="col-4 pt-1">
                <a class="blog-header-logo text-dark" href="index.jsp"><img width="250px" height="50px"src="./Resources/logo.png"/></a>
            </div>
            <div class="col-4 text-center">



            </div>

            <div class="col-4 d-flex justify-content-end align-items-center">


                <a class="btn btn-sm btn-outline-secondary" href="login.jsp">Login</a>








                &nbsp;
                <a class="btn btn-sm btn-outline-secondary" href="register.jsp">Register</a>
            </div>
        </div>
    </header>
<div class="main">
    <div class="wrapper">


        <%
            String firstName = request.getParameter("fname");
            String lastName = request.getParameter("lname");
            String userName = request.getParameter("email");
            String password = request.getParameter("passwd");

            LoginUtil login = LoginUtil.getInstance();
            pageContext.setAttribute("userNameCtx", userName);

            if (userName != null && !userName.isEmpty() && password != null && !password.isEmpty()) {
                    if (login.userExists(userName)) { %>


        <div class="container login-container">
            <div class="row">
                <div class="col-md-6 login-form-1">
                    <h3>Welcome to Milestone Planner </h3>
                    <br>
                    <img src="./Resources/login.png" width="500px">

                </div>
                <div class="col-md-6 login-form-2">
                    <h3>Register to your Account</h3>
                    <br>

                    <h5 style="color: white;"> User already Exists! <br> <br>Please try a different user name. Please try again <br><br> <br> <br> <a style="width: 200px" class="btn btn-danger" href="../views/register.jsp">Register</a>  or   <a style="width: 200px"  class="btn btn-primary" href="../views/login.jsp"> Login </a> </h5>
                </div>
            </div>
        </div>










                    <% } else {
                        login.addUser(userName, password);

                        if (!login.validateUser(userName, password)) { %>
                            <p> Error while registering new user! Please go <a href="../views/register.jsp">back</a> and try again! </p>
                        <% } else {%>
        <div class="container login-container">
            <div class="row">
                <div class="col-md-6 login-form-1">
                    <h3>Welcome to Milestone Planner </h3>
                    <br>
                    <img src="./Resources/login.png" width="500px">

                </div>
                <div class="col-md-6 login-form-2">
                    <h3>Register to your Account</h3>
                    <br>





                    <p style="color: white;"> Hi <c:out value="${fn:escapeXml(userNameCtx)}"/>. Registration successful! Click <a href="../views/login.jsp">here</a> to Login </p>
                </div>
            </div>
        </div>














                        <% }
                    }
            } else { %>






            <div class="container login-container">
                <div class="row">
                    <div class="col-md-6 login-form-1">
                        <h3>Welcome to Milestone Planner </h3>
                        <br>
                        <img src="./Resources/login.png" width="500px">

                    </div>
                    <div class="col-md-6 login-form-2">
                        <h3>Register to your Account</h3>
                        <br>

                        <h5 style="color:white;"> Empty username or password! Please fill in the entries properly by going <a href="../views/register.jsp">back</a></h5>
                    </div>
                </div>
            </div>





         <% } %>

    </div>
</div>
</div>
</body>
</html>
