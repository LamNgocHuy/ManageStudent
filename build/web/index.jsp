<%-- 
    Document   : index
    Created on : 12 thg 6, 2020, 13:31:54
    Author     : macbookpro
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Index Page</title>
        <style>table {
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            td, th {
                border: 1px solid #dddddd;
                text-align: left;
                padding: 8px;
            }

            tr:nth-child(even) {
                background-color: #dddddd;
            }
            body {
                font-family: Arial;
            }

            * {
                box-sizing: border-box;
            }

            form.example input[type=text] {
                padding: 10px;
                font-size: 17px;
                border: 1px solid grey;
                float: left;
                width: 80%;
                background: #f1f1f1;
            }

            form.example button {
                float: left;
                width: 20%;
                padding: 10px;
                background: #2196F3;
                color: white;
                font-size: 17px;
                border: 1px solid grey;
                border-left: none;
                cursor: pointer;
            }

            form.example button:hover {
                background: #0b7dda;
            }

            form.example::after {
                content: "";
                clear: both;
                display: table;
            }
        </style>
    </head>
    <body>
        <h1>Hello ${user.name}</h1>

        <p>  <a href="ListServlet"> List All Student</a> <p>
        <form class="example" action="SearchServlet" method ="GET"
              style="margin:right;max-width:500px">
            <input type="text" placeholder="Search.." name="search">
            <button type="submit"><i class="fa fa-search"></i></button>
        </form>
        
        
        <br>
        <table > 
            <tr>
                <th>ID </th>
                <th> Name </th>
                <th> Email </th>
                <th> Thao tác </th>
                <th> Thao tác </th>
            </tr> 
            <c:forEach  var = "user" items="${sessionScope.listUser}">
                <tr>
                    <td> ${user.id} </td>
                    <td>${user.name}</td>
                    <td>${user.email}</td>
                    <td> <a href="EditServlet?id=${user.id}"> Edit </a></td>
                    <td> <a href="DeleteServlet?id=${user.id}"> Delete </a></td>
                </tr>
                
            </c:forEach>   
        </table>
        <br>
        <br>
        <a href="register.jsp" > Add New User </a>
        <p>${message}</p>
    </body>
</html>
