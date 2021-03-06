<%
    if (session == null || session.getAttribute("is_login") == null || !session.getAttribute("is_login").equals("1")) {
        response.sendRedirect("error.jsp");
    }
%>
<%@ page import="org.eclipse.jetty.demo.LoginUtil" %>

<!DOCTYPE html>
<html>
<head>

    <title>Portal -  Milestone Planner</title>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
                <a class="blog-header-logo text-dark" ><img width="250px" height="50px"src="./Resources/logo.png"/></a>
            </div>
            <div class="col-4 text-center">



            </div>

            <div class="col-4 d-flex justify-content-end align-items-center">


                <a class="btn btn-sm btn-outline-secondary"  href="../controller/logoutProcess.jsp" value="">Logout</a> &nbsp;

            </div>
        </div>
    </header>

    <h3 align="center"> Welcome <c:out value="${fn:escapeXml(userNameCtx)}"/> to the Dashboard</h3>

    <div id="user_div" >

        <div class="container login-container">
            <div class="row">
                <div class="col-md-6 login-form-1">
                    <h3> Add Milestone </h3>
                    <br> <br>

                    <div class="row">
                        <div  align="center" class="col-sm-4"> <a href="./viewMilestones.jsp" ><img width="80px" height="80px" src="./Resources/icon1.png"/><p> View Milestones</p></a></div>
                        <div  align="center" class="col-sm-4"> <a href="./AddMileStone.jsp" > <img width="80px" height="80px" src="./Resources/icon2.png"/><p> Add Milestones</p></a></div>
                        <div  align="center" class="col-sm-4"> <a href="./DeleteMilestone.jsp" > <img width="80px" height="80px" src="./Resources/icon3.png"/><p> Delete Milestones</p></a></div>

                    </div>
                    <br>
                    <div>
                        <br>
                        <br>

                    </div>

                    <div class="row">


                        <div  align="center" class="col-sm-4">  <a href="./shareMilestone.jsp" > <img width="80px" height="80px" src="./Resources/icon4.png"/><p> Share Milestone</p></a></div>
                        <div  align="center" class="col-sm-4"> <a href="./membersArea.jsp" > <img width="80px" height="80px" src="./Resources/mem.png"/><p> Member Area</p></a></div>

                        <div  align="center" class="col-sm-4"> <a href="./about.jsp" >   <img width="80px" height="80px" src="./Resources/icon5.png"/><p> About Application</p></a></div>
                    </div>








                </div>
                <div class="col-md-6 login-form-2">
                    <h3>Add a Milestone Below:</h3>

                    <form action="../controller/msprocess.jsp" method="GET" name="Addmilestone">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Milestone name ..." name="milestonename"/>
                        </div>
                        <div class="form-group">
                            <input style="height: 80px;" type="text" class="form-control" placeholder="Description..." name="milestonedescription" />
                        </div>
                        <div class="form-group">
                            <input type="date" class="form-control" placeholder="Milestone Start Date..." name="milestonedate" />
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Managing Staff Name..." name="personName" />


                        </div>
                        <div class="form-group">
                            <input style="width: 200px;" class="btn btn-primary" value="Add Milestone" type="submit"  /> &nbsp;


                            &nbsp;

                        </div>


                        <div class="form-group">



                        </div>
                    </form>
                </div>
            </div>
        </div>


    </div>
</div>






</body>


</html>