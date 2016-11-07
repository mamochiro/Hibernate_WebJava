<%-- 
    Document   : OrdersSearchText
    Created on : Nov 6, 2016, 10:03:10 PM
    Author     : mark
--%>

<%@page import="java.util.List"%>
<%@page import="order.Orders"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Orders Management System</title>
    </head>
    <body bgcolor = "b3ffe6">
    <center>
        <a href="OrdersInsert.jsp" >Add new Orders</a>&nbsp;&nbsp;&nbsp;
        <a href="ListController" >Orders List</a> <br>
            <br/>
            <h2>Search Your Orders</h2><br>
            <form  name="searchForm" action="SearchController">
                Enter Order Number :<input type="text"  name="searchValue" value="" >
                <input type="submit"  value="Find Orders Details" name="searchButton" />
            </form><br>
               <form name="searchForm" action="SearchTextController">
                Enter Type:<input type="text"  name="searchValue" value="" >
                <input type="submit"  value="Find Type" name="searchButton" />
            </form>
            <br>
            <%
                try {
                    // Create a session object if it is already not  created.
                     List<Orders> ordersList = (List<Orders>) session.getAttribute("searchResult");
                    if (ordersList != null) {
            %>
            <table border="1"> <% //border="1" %>
                <tbody>
                    <tr>
                        <td >Orders ID</td>
                        <td>ID Type</td>
                        <td>Type</td>
                       <td>Price</td>
                        <td>No </td>
                        <td>PriceResult</td>
                       
                    <% for (Orders acc : ordersList){%> 
                    <tr>
                       <td ><% out.println(acc.getId()); %></td>
                        <td><% out.println(acc.getIdtype()); %></td>
                       <td><% out.println(acc.getType()); %></td>
                       <td><% out.println(acc.getPrice() ); %></td>
                       <td><% out.println(acc.getNo()); %></td>
                       <td><% out.println(acc.getPriceResult()); %></td>
                    </tr>
                    <%} %>
                </tbody>
            </table>

            <%
                    }
                } catch (Exception e) {
                    out.println(e.getMessage());
                }

            %>
    </center>
    </body>
</html>
