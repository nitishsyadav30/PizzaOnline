<%-- 
    Document   : signup
    Created on : 10 Sep, 2014, 12:27:51 PM
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
            <div class="col-lg-5" style="margin-top: -20em">
                <form action="#" method="post">
                    <legend>Sign Up</legend>
                    <div class="row" style="margin: 10px;">
                        <input type="text" class="form-control" placeholder="Mobile Number" name="mobile" required>
                    </div>
                    <div class="row" style="margin: 10px;">
                        <input type="text" class="form-control" placeholder="City" name="city" required>
                    </div>
                    <div class="row" style="margin: 10px;">
                        <input type="password" class="form-control" placeholder="Password" name="password" required>
                    </div>
                    <div class="row" style="margin:10px">
                        <input type="submit" value="Sign Up" class="btn-warning btn-block">
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
