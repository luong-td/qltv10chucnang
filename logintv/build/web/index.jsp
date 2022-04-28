<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <head>
        <title>Đăng nhập</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    </head>
    <body>
        <div class="index">
            <br><br><br><br>
            <form action="LoginServlet" method="post">
                <label>Tài khoản</label>
                <input type="text" name="taikhoan" required><br>
                <p id="notify" style="color: red"><i>${messagedk}</i></p>
                <label>Mật khẩu</label>
                <input type="text" name="matkhau" required><br>

                <input type="submit" value="Đăng nhập" id="submit">
                <p class="chuacotaikhoan"> Nếu bạn chưa có tài khoản <a href="dangki.jsp" name="dangki">Đăng kí</a></p>
            </form>
        </div>
        
    </body>
</html>
