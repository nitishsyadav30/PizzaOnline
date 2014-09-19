<%-- 
    Document   : menu
    Created on : 9 Sep, 2014, 2:33:58 PM
    Author     : Nitish
--%>

<%@page import="java.sql.Blob"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.lang.String"%>
<%@page import="java.util.ArrayList"%>

<%@page import="model.ConnectionDb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <%@include file="include/navbar.jsp" %>

        <%
            ConnectionDb db = new ConnectionDb();

            Connection con = db.Connect();

            Statement statement = con.createStatement();

        %>
        <div class="container">

            <div class="col-lg-12" style="margin-top: -25em;" id="veg">

                <span><legend><h2>Veg Pizzas</h2></legend></span>

                <%                    ResultSet resultset
                            = statement.executeQuery("select * from pd_pizzas where type like 'veg' ");
                    while (resultset.next()) {%>
                    <div class="pizzablock" style=""  >
                    <img src="<%= resultset.getString(5)%>" width="220px"><br />
                    <%= resultset.getString(2)%><br />

                    <a href="pizza.jsp?id=<%= resultset.getInt(1)%>" class="btn btn-lg btn-success" >Know more</a>

                </div>
                <% }%>
            </div>
            <div class="col-lg-12" style="margin-top: -25em; display: none;" id="nonveg">

                <span><legend><h2>Non-Veg Pizzas</h2></legend></span>

                <%                  
                    ResultSet resultse
                            = statement.executeQuery("select * from pd_pizzas where type like 'nonveg' ");
                    while (resultse.next()) {%>
                    <div class="pizzablock" style=""  >
                    <img src="<%= resultse.getString(5)%>" width="220px"><br />
                    <%= resultse.getString(2)%><br />

                    <a href="pizza.jsp?id=<%= resultse.getInt(1)%>" class="btn btn-lg btn-success" >Know more</a>

                </div>
                <% }%>
            </div>
        </div>

    </body>
</html>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $("#nonvegm").click(function(){
            $("#veg").hide();
           $("#nonveg").show();
        });
    });
</script>