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
        
    </head>
    <body>
        <%@include file="include/navbar.jsp" %>
        <div class="container">
            <div class="col-lg-5" style="margin-top: -20em">
                <% if(request.getAttribute("exist")!=null){%>
                <div class="alert alert-warning alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Warning!</strong><%= request.getAttribute("exist") %> 
</div>
                <% }%>
                <form action="signUpController" method="post">
                    <legend>Sign Up</legend>
                    <div class="row" style="margin: 10px;">
                        <input type="text" class="form-control" placeholder="Email (email@example.com)" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required>
                    </div>
                    <div class="row" style="margin: 10px;">
                        <input type="text" class="form-control" placeholder="10 Digit Mobile Number" name="mobile" pattern="[0-9]{10}" maxlength="11" required>
                    </div>
                    <div class="row" style="margin: 10px;">
                        <input type="text" class="form-control" placeholder="City (minimum 3 characters)" name="city" pattern="[a-zA-Z]{3,20}" min="3"  required>
                    </div>
                    <div class="row" style="margin: 10px;">
                        <input type="password" class="form-control" placeholder="Password (min 4 characters)" name="password" pattern="[a-zA-Z0-9]{4,15}" maxlength="15" required>
                    </div>
                    <div class="row" style="margin:10px">
                        <input type="submit" value="Sign Up" class="btn-warning btn-block">
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
