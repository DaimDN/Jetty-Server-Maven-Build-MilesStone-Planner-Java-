<%
    if (session == null || session.getAttribute("is_login") == null || !session.getAttribute("is_login").equals("1")) {
        response.sendRedirect("/views/error.jsp");
    }
%>

<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@ page import="org.eclipse.jetty.demo.MilestoneUtil" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.sun.xml.internal.bind.v2.model.core.ID" %>
<%@ page import="org.eclipse.jetty.demo.MilestoneUtil" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="javax.swing.*" %>


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


                <a class="btn btn-sm btn-outline-secondary" href="logoutProcess.jsp">Logout</a>
            </div>
        </div>
    </header>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <div align="center"> <h1 class="display-6"> Milestone has been added Successfully !</h1></div>
<br>
    <div align="center"> <h1 class="display-7"> <a href="/views/viewMilestones.jsp">View Milestones</a></h1></div>
            <%
                String Msname = request.getParameter("milestonename");
                String Msdescription = request.getParameter("milestonedescription");
                String Msdate = request.getParameter("milestonedate");


                String Pname = request.getParameter("personName");




                if (Msname != null && !Msname.isEmpty() && Msdescription != null && !Msdescription.isEmpty() && Msdate!= null && !Msdate.isEmpty() && Pname != null &&!Pname.isEmpty()) {



                 MilestoneUtil msutil = new MilestoneUtil(Msname, Msdescription, Msdate, Pname);
                    msutil.name();

                                ArrayList<String> arry = new ArrayList<String>();
                                Hashtable<Integer, String> h =  new Hashtable<Integer, String>();
                                Hashtable<Integer, String> h1 =
                                  new Hashtable<Integer, String>();

                                h.put(3, "Geeks");
                                h.put(2, "forGeeks");
                                h.put(1, "isBest");

                                // create a clone or shallow copy of hash table h
                                h1 = (Hashtable<Integer, String>)h.clone();

                                // checking clone h1
                                System.out.println("values in clone: " + h1);

                                // clear hash table h
                                h.clear();
                                 String strPath = "ms.ser";
                                 File strFile = new File(strPath);
                                 boolean fileCreated = strFile.createNewFile();

                               String[] array = new String[7];


                     Writer objWriter = new BufferedWriter(new FileWriter(strFile));






                    objWriter.write(msutil.name() + "\t"+ "\t" +"&nbsp"+ msutil.Des()+"\t"+"\t"+"&nbsp"+ msutil.Date() +"\t"+"\t"+"&nbsp"+msutil.Pname());







                 objWriter.flush();
                 objWriter.close();


                }







           %>




</body>
</html>
