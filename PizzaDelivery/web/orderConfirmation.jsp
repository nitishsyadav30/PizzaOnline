<%-- 
    Document   : orderConfirmation
    Created on : 19 Sep, 2014, 7:06:05 PM
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
            <div class="col-lg-4" style="margin-top: -22em">
        <form action="confirmController" method="post">
            <div class="row" style="margin: 10px;"> 
                <input id="TownCity" name="city" value="" type="text" class="form-control"  placeholder="Type/Select City *" >  
            </div>
            <div class="row" style="margin: 10px;">
                <input id="StreetName" name="street"  type="text" class="form-control"  placeholder="Type/Select Street/Building Name *"  >  
            </div>
            <div class="row" style="margin: 10px;">
                <input id="BuildingName" name="building" class="form-control" type="text" placeholder="Type/Select House/Flat # *" >  
            </div>    
            <div class="row" style="margin: 10px;">
                <input id="NearbyLandmark" name="area" class="form-control" type="text"   placeholder="Type Area *" >  
            </div>
            <div class="row" style="margin: 10px;">
                <input class="btn btn-warning btn-block"  type="submit" value="Confirm">
            </div>
        </form>
            </div>
        </div>
    </body>
</html>
