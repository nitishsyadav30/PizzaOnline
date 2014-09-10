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
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="include/navbar.jsp" %>
        <div class="container">
            <div class="col-lg-4" style="margin-top: -20em">
                <form action="#" method="post">
                    <legend>Sign Up</legend>
                    <div class="row" style="margin: 10px;">
                        <input type="text" class="form-control" placeholder="Mobile Number" name="mobile" required>
                    </div>
                    <div class="row" style="margin: 10px;">
                        <input type="password" class="form-control" placeholder="Password" name="password" required>
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
