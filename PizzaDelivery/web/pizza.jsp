<%-- 
    Document   : pizza
    Created on : 14 Sep, 2014, 7:53:42 PM
    Author     : Nitish
--%>
<%@page import="model.ConnectionDb"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.OutputStream"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>
    <body>
        <%@include file="include/navbar.jsp" %>
        <%
            ConnectionDb db = new ConnectionDb();

            Connection con = db.Connect();;

            Statement statement = con.createStatement();
            String id=request.getParameter("id");
            String sql="select * from pd_pizzas where pizza_id like "+id;
            ResultSet resultset = statement.executeQuery(sql);
           
            %>
        <div class="container">
            <div class="col-lg-5" style="margin-top: -25em;">
                 <div class="cont">
                <% while(resultset.next()) { %>
               <div class="widget-header"><h3><% out.print(resultset.getString(2)); %></h3></div>
               <img src="<% out.print(resultset.getString(5)); %>" width="444px;">
               <div class="description" style="">
               <p><% out.print(resultset.getString(3)); %></p>
               </div>
                <% } %>
                 </div> 
            </div>
            
        </div>
    </body>
</html>
