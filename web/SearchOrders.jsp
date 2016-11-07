<%-- 
    Document   : SearchOrders
    Created on : Oct 31, 2016, 12:03:54 AM
    Author     : mark
--%>

<%@page import="order.Orders"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor = "b3ffe6">
                <h1>Order JSP Hibernate Example!</h1> 
                 <a href="OrdersInsert.jsp">Add orders</a> 
                 <a href="ListController" >Orders List</a><br><br>
        <div style="background-color: #FFBBCC; width:100%;"> 
            <br />
            <h2>Order Search Form</h2>
            <form name="searchForm" action="SearchController">
                Enter Order ID:<input type="text" name="searchValue" value="" >
                <input type="submit" value="Find Order Details" name="searchButton" />
            </form>

            <%
                try {
                    // Create a session object if it is already not  created.
                    Orders acc = (Orders) session.getAttribute("searchResult");

                    if (acc != null) {
%>


            <table border="1">

                <tbody>
                    <tr>
                        <td>Order ID</td>
                        <td><% out.println(acc.getId()); %></td>
                    </tr>
                    <tr>
                        <td>Oder Type</td>
                        <td><% out.println(acc.getIdtype()); %></td>
                    </tr>
                    <tr>
                        <td>Price</td>
                        <td><% out.println(acc.getPrice()); %></td>
                    </tr>
                    <tr>
                        <td>PriceResult</td>
                        <td><% out.println(acc.getPriceResult()); %></td>
                    </tr>
                </tbody>
            </table>

            <%
                    } 

                } catch (Exception e) {
                    out.println(e.getMessage());
                }

            %>

    </body>
</html>
