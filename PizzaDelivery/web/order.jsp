<%-- 
    Document   : order
    Created on : 14 Sep, 2014, 11:11:20 PM
    Author     : Nitish
--%>

<%@page import="java.util.Enumeration"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="model.ConnectionDb"%>
<%@page import="java.sql.ResultSet"%>
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

            Connection con = db.Connect();
            Statement statement = con.createStatement();
            HttpSession session1 = request.getSession();
            Enumeration<String> l = session1.getAttributeNames();
            boolean flag =false;
           while(l.hasMoreElements())
           {
               if(l.nextElement().equals("list"))
               {
                   flag=true;
                  
               }
           }
           if(flag==true)
           {
               String[] idList =(String[])session1.getAttribute("list");
           }
           else
           {
               String[] s = new String[100];
               session1.setAttribute("list",s);
                String[] idList =(String[])session1.getAttribute("list");
               
           } 
            %>
         <% if (session.getAttribute("email") != null) { %>   
        <div class="container">
            <div class="col-lg-8" style="margin-top: -25em;">
                <span><legend><h2>Veg Pizzas</h2></legend></span>

                <%                    ResultSet resultset
                            = statement.executeQuery("select * from pd_pizzas");
                    while (resultset.next()) {%>
                <div class="pizzablock" style=""  >
                    <img src="<%= resultset.getString(5)%>" width="180px"><br />
                    <%= resultset.getString(2)%><br />

                    <a href="order.jsp?id=<%= resultset.getString(1) %>"  class="btn btn-sm btn-success" >Add to Cart</a>

                </div>
                <% }%>
            </div>
            <div class="col-lg-4" style="margin-top: -25em;">
                <div class="divMain">
                    <div id="floatDiv">
                        <legend><h3>Order Cart</h3></legend>
                        <form action="orderController" method="post">
                        <table class="carttable" style="text-align: center;">
                            <th> Item Name</th>
                            <th> Item Quantity</th>
                            <th> Item Price</th>
                            <% if(request.getParameter("id")!=null){
                               String id=request.getParameter("id");
                               String str="select * from pd_pizzas where pizza_id like "+id;
                                  ResultSet resultset1
                            = statement.executeQuery(str);
                                  while(resultset1.next()){
                                  %>
                            <tr>
                                <td><input type="text" readonly value="<%= resultset1.getString(2)%>" name="name"></td>
                                <td><input type="text" name="quantity" pattern="[1-3]{1}" maxlength="1" required style="width:50px;"></td>
                                        <td><select name="price" >
                                                <option value="">S/M/L</option>
                                                <option><%= resultset1.getString(6)%></option>
                                                <option><%= resultset1.getString(7)%></option>
                                                <option><%= resultset1.getString(8)%></option>
                                    </select></td>
                            </tr> 
                            <%
                                  }
                            }
                            %>
                            <tr>
                                <% if(request.getParameter("id")!=null) {%>
                                <td colspan="3"><input value="Checkout" type="submit" class="btn btn-warning"></td>
                                <% } %>
                            </tr>
                        </table>
                            </form>
                    </div>
                </div>
            </div>
        </div>
<% } else { %>
<div class="container">
    <div class="col-lg-6" style="margin-top: -22em">
        <h1 style="color: white">Please Login First To Order</h1>
    </div>
</div>
<%}%>
    </body>
</html>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script> 
<script language="javascript">

    $(document).ready(function() {

        //on window scroll fire it will call a function.

        $(window).scroll(function() {

            //after window scroll fire it will add define pixel added to that element.

            set = $(document).scrollTop() + "px";

            //this is the jQuery animate function to fixed the div position after scrolling.

            $('#floatDiv').animate({top: set}, {duration: 100, queue: false});

        });

    });

</script>