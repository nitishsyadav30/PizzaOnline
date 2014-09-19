<%-- 
    Document   : index
    Created on : 8 Sep, 2014, 5:15:41 PM
    Author     : Nitish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


    </head>
    <body>
        <%@include file="include/navbar.jsp" %>
        <div class="container">

            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" style="margin-top: -25em">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="images/slider/1.jpg" alt="...">
                        <div class="carousel-caption">
                          
                        </div>
                    </div>
                    <div class="item">
                        <img src="images/slider/2.jpg" alt="...">
                        <div class="carousel-caption">
                           
                        </div>
                    </div>
                   
                </div>


            </div>
        </div>
    </body>
</html>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
