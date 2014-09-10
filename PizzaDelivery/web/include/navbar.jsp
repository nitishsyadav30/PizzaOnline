<%-- 
    Document   : navbar
    Created on : 9 Sep, 2014, 2:35:08 PM
    Author     : Nitish
--%>
<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/style2.css">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="navbar-wrapper">
    <div class="container">
        <div class="navbar navbar-inverse" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.jsp">Planet Pizza</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="index.jsp">Home</a></li>
                    <li><a href="menu.jsp">Menu</a></li>
                    <li><a href="#">Order Online</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="#">About</a></li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div>
    </div>
</div>
 <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="item active">
                    <img src="images/carasoul.jpg" alt="Image">
                </div>
            </div>
        </div>