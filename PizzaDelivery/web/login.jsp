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
            <div class="col-lg-4" style="margin-top: -20em">
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
            </div>
        </div>
    </body>
</html>
