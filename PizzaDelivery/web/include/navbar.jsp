<%-- 
    Document   : navbar
    Created on : 9 Sep, 2014, 2:35:08 PM
    Author     : Nitish
--%>
<title>Buy Online at Planet Pizza</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/style2.css">

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true" %>
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
                    <li class=""><a href="index.jsp">Home</a></li>
                    <li class="dropdown">
                        <a href="menu.jsp" class="dropdown-toggle" data-toggle="dropdown">Menu<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="menu.jsp">Veg</a></li>
                            <li id="nonvegm"><a href="#" >Non-Veg</a></li>
                        </ul>
                    </li>
                             
                            <li><a href="order.jsp">Order Online</a></li>
                            
                        </ul>

                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#">About</a></li>
                                <% if (session.getAttribute("email") == null) { %>
                            <li><a href="login.jsp">Login</a></li>
                                <% } else { %>
                            <li><a href="loginController?logout=1" name="logout">Logout</a></li>
                                <% }%>

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