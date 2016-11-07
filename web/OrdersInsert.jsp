<%-- 
    Document   : OrdersInsert
    Created on : Nov 6, 2016, 5:24:13 PM
    Author     : mark
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add new Orders</title>
    </head>
    <body bgcolor = "b3ffe6">
         <center>
        
        <h1>Add New Order</h1>
        
        <a href="SearchOrders.jsp">Go To First Page</a> <a href="ListController" >Orders List</a><br><br>
    
        <%
            String message = request.getParameter("message");
            if (message != null) {
                out.println(message);
            }

        %>
    
        <form name="formAddActor" action="AddOrdersController">
    
            
            IdType : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" name="idtype"value="" /> <br><br>
            
            Type :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;
            <input type="text" name="type"value="" /> <br><br>
            
            Price : &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
             <input type="text" name="price"value="" /> <br><br>
            
            No : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" name="no"value="" /> <br><br>
            
            priceResult: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" name="priceResult"value="" /> <br><br>
            
          
         
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <input type="submit" value="Add Orders"name="addOrders" /><br><br>
        </form>
        
        <br><br>

        
        
        <form name="formSearchTicket"action="SearchController" >

            Search by id: <input type="text"name="searchValue" value="" />
            
            <input type="submit" value="Search"name="SearchActor" /> <br><br><br><br>
    
    
        </form>
               
    </center>
    </body>
</html>
