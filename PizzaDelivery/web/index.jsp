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
       
            <!---->
            <div id="DeliveryForm" class="infoTemplate">
                <span style="margin: 10px"></span>
                <div class="dividerCross"></div>
                <div class="infoTemplate-detail">
                    
                    <div id="deliveryviewcontainer" class="infoTemplate-form"> 
                        <div>
                            <form action="#" id="frmDelivery" method="post">
                                    <div id="address-container" class="infoTemplate-form">
                                        <!--<legend></legend>-->
                                        <fieldset>

                                            <div id="deliveryAddressFiledNo0">

                                                <div class="editor-field formLayer">
                                                    <input id="TownCity" name="city" value="" type="text" title="City" class="inputTwoHundred fieldBox" placeholder="Type/Select City *" tabindex="1" display-order="0" data-val="true" data-val-required="City is required" data-typeahead="true" data-typeahead-parentfield="NOT_SET" data-typeahead-triggeredfield="District">  
                                                </div>
                                            </div>
                                        </fieldset>
                                        <fieldset>

                                            <div id="deliveryAddressFiledNo1">

                                                <div class="editor-field formLayer">
                                                    <input id="District" name="locality" value="" type="text" title="Locality" class="inputTwoHundred fieldBox" placeholder="Type/Select Locality *" tabindex="2" display-order="1" data-val="true" data-val-required="Locality is required" data-typeahead="true" data-typeahead-parentfield="TownCity" data-typeahead-triggeredfield="StreetName" >  
                                                </div>
                                            </div>
                                        </fieldset>
                                        <fieldset>

                                            <div id="deliveryAddressFiledNo2">

                                                <div class="editor-field formLayer">
                                                    <input id="StreetName" name="street" value="" type="text" title="Street/Building Name" class="inputTwoHundred fieldBox" placeholder="Type/Select Street/Building Name *" tabindex="3" display-order="2" data-val="true" data-val-required="Street Name is required" data-typeahead="true" data-typeahead-parentfield="District" data-typeahead-triggeredfield="Intersection" >  
                                                </div>
                                            </div>
                                        </fieldset>
                                        <fieldset>

                                            <div id="deliveryAddressFiledNo3">

                                                <div class="editor-field formLayer">
                                                    <input id="BuildingName" name="building" value="" type="text" title="House/Flat #" class="inputTwoHundred fieldBox" placeholder="Type/Select House/Flat # *" tabindex="4" display-order="3" data-search-field="BuildingNumber" maxlength="30"  data-val="true" data-val-required="House/Flat# is required" data-typeahead="false">  
                                                </div>
                                            </div>
                                        </fieldset>
                                        <fieldset>

                                            <div id="deliveryAddressFiledNo4">

                                                <div class="editor-field formLayer">
                                                    <input id="NearbyLandmark" name="landmark" value="" type="text" title="Landmark" class="inputTwoHundred fieldBox" placeholder="Type/Select Landmark *" tabindex="5" display-order="4" maxlength="30" data-typeahead="false">  
                                                </div>
                                            </div>
                                        </fieldset>
                                    </div>
                                <span style="margin:10px;"></span>
                                    <input class="btn btn-warning btn-block" id="address-search" name="address-search" onclick="" type="button" value="Proceed">
                            </form>
                                </div>
                    </div>
                </div>
            </div>
          


    </body>
</html>
