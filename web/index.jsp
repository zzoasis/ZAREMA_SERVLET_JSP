<%-- 
    Document   : index
    Created on : 01.03.2021, 19:32:06
    Author     : Зарема
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <title>Разработка сервлета на Java для расчета математического значения по заданному алгоритму</title>
    </head>
    
    <style>
        body{
    background-color: yellow;
}
        img {
            display: block;
            margin:auto
        }
        h1, h2 {
            text-align: center
        }
        .setting1 {
            display:grid;
            justify-content: center;
            grid-template-columns: max-content max-content;
            grid-gap:5px
        }
        .setting1 label {
            text-align:center
        }
        .setting2 {
            display:grid;
            justify-content: center;
            grid-template-columns: max-content max-content;
            grid-gap:5px
        }
        .setting2 label {
            text-align:center
        }
        .setting3 {
            display:grid;
            justify-content: center;
            grid-template-columns: max-content max-content;
            grid-gap:5px
        }
        .setting3 label {
            text-align:center
        }
        .buttons {
    text-align: center;
    display: block;
}

    </style>
    
    <body>
        <h1><i><font color="red">Пример</font></i></h1>
        <img src="5variant.png">
        <h2><i><font color="red">Вариант 5</font></i></h2>
        </br>
        <form action="Main" method="POST">
            <div class="setting1">
            <label><i><font color="blue">Введите x =</font></i></label><input type="text" name="x"/>
            </div>
            <div class="setting2">
            <label><i><font color="blue">Введите a =</font></i></label><input type="text" name="a"/>
            </div>
            <div class="setting3">
            <label><i><font color="blue">Введите b =</font></i></label><input type="text" name="b"/> 
            </div>
            </br>
            <div class="buttons"><span>
            <input type="submit" name="solve" value="Решить"/>
            <input type="reset" name="clear" value="Сбросить"/>
            </span></div>/
        </form>
    </body>
    
</html>
