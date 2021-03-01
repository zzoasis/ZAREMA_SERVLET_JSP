<%-- 
    Document   : result
    Created on : 01.03.2021, 19:33:10
    Author     : Зарема
--%>

<%@page import="servlet_jsp.ResultForm"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <title>Решение</title>
    </head>
    
    <style>
         body{
    background-color: yellow;
}
img {
            display: block;
            margin: auto
        }
h1, h2, h3, h4, h5 {
            text-align: center
                
        }
        a {
            margin:auto;
            text-align:center;
            display:block
            
        }
        .buttons {
    text-align: center;
    font-style: oblique;
        }
    </style>
    
    <body>
        <h1><i><font color="red">Решение уравнения</font></i></h1>
        <img src="5variant.png">
        <h2><i><font color="red">Вариант 5</font></i></h2>
         <h3><i><font color="blue"><%
             ResultForm result = (ResultForm) request.getAttribute("result");
            if (result == null) {
                out.print("Нет решения!");
            } else {
                out.println(String.format("x = " + request.getParameter("x")));
                out.println(String.format("<br/>a = " + request.getParameter("a")));
                out.println(String.format("<br/>b = " + request.getParameter("b")));
            %></font></i></h3>
        <h4><i><font color="black">Ответ:</font></i></h4>
        <h5><font color="black"><%

                out.println(String.format("y = %.3f", result.getY()));
            }
            %></font></h5>
        <a href="javascript:history.back()"><font color="green">Назад</font></a><br/><br/>
    </body>
</html>
