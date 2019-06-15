
<html>
<head>
    <title>Login - Milestone Planner</title>
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
    <br>



    <div class="container login-container">
        <div class="row">
            <div class="col-md-6 login-form-1">
                <h3>Welcome to Milestone Planner </h3>
                <br>
                <img width="500px"  src="./Resources/loginx.png" >

            </div>
            <div class="col-md-6 login-form-2">
                <h3>Login to your Account</h3>
                <br>
                <form action="../controller/loginProcess.jsp" method="GET" name="LoginForm">
                    <div class="form-group">
                        <input type="email" class="form-control" placeholder="Email..." name="name"/>
                    </div>

                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="Password..." name="passwd" />
                    </div>


                    <div class="form-group">
                        <input style="width: 200px;" class="btn btn-primary" value="Login" type="submit"  /> &nbsp;
                        <a  style="width: 200px;" class="btn btn-danger" href="register.jsp">Register</a>

                        &nbsp;

                    </div>


                    <div class="form-group">



                    </div>
                </form>
            </div>
        </div>
    </div>

























</body>
</html>
