<%-- 
    Document   : login
    Created on : 9 Sep, 2014, 2:49:15 PM
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
            
            <div class="col-lg-5" style="margin-top: -20em">
                <% if (request.getAttribute("success") != null) {%>
            <div class="alert alert-success">
                <a href="#" class="close" data-dismiss="alert">&times;</a>
                <strong>Success! </strong><%= request.getAttribute("success") %>
            </div>
            <% } %>
                <% if (session.getAttribute("email") == null) { %>
                <form action="loginController" method="post">
                    <legend>Login</legend>
                    <div class="row" style="margin: 10px;">
                        <input type="text" class="form-control" placeholder="Email (email@example.com)" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required>
                    </div>
                    <div class="row" style="margin: 10px;">
                        <input type="password" class="form-control" placeholder="Password" name="password" pattern="[a-zA-Z0-9]{4,15}" maxlength="15" required>
                    </div>
                    <div class="row" style="margin: 10px;">
                        <input type="submit" class="btn-warning btn-block">
                    </div>
                    <div class="row" style="margin: 10px;">
                        <a href="signup.jsp">Sign Up</a> 
                    </div>

                </form>
                <% } else {%>
                <h1 style="color: black; text-align: center">Oops! Page Not Found</h1>

                <% }%>
            </div>
        </div>
    </body>
</html>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
