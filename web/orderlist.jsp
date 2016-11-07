<%-- 
    Document   : orderlist
    Created on : Oct 30, 2016, 11:56:05 PM
    Author     : mark
--%>

<%@page import="order.Orders"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor = "b3ffe6">
    <center>
        <h1>Order List</h1>
        <a href="OrdersInsert.jsp">Add orders</a>
        <a href="SearchOrders.jsp">Go To First Page</a><br><br>
        <%
            try {

                List<Orders> orderList = (List<Orders>) session.getAttribute("listResult");

                if (orderList != null) {
                    //    out.println("not null");
                    //   out.println(filmList.size());

        %>
        <table border="1">

            <tbody>
                <tr>
                    <td bgcolor = "00fffff">ID</td>
                    <td bgcolor = "00fffff">Type</td>
                    <td bgcolor = "00fffff">Price</td>
                    <td bgcolor = "00fffff">PriceResult</td>
                </tr>
                <%                        for (Orders acc : orderList) {
                %>
                <tr>
                    <td bgcolor = "ccfffff"><% out.println(acc.getId()); %></td>
                    <td bgcolor = "ccfffff" ><% out.println(acc.getType()); %></td>
                    <td bgcolor = "ccfffff"><% out.println(acc.getPrice()); %></td>
                    <td bgcolor = "ccfffff"><% out.println(acc.getPriceResult()); %></td>
                </tr>
                <% } %>
            </tbody>
        </table>  


        <%

                } else {
                    out.println("return null");
                }
            } catch (Exception e) {
                e.printStackTrace();
                out.println("error");
            }

        %>
    </center>
    </body>
</html>
