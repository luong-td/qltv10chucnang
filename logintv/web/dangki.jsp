<%-- 
    Document   : dangki
    Created on : Mar 30, 2022, 8:32:39 AM
    Author     : DELL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng kí</title>
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    </head>
    <body>
        <div class="dangki"><br>
            <h1>Rất vui khi bạn ghé qua</h1>
            <c:if test="${check == '1'}"><script>alert("Bạn đã đăng kí thành công")</script></c:if>
            <form action="DangkiServlet" method="post" >
                <label>Tài khoản</label>
                <input type="text" name="taikhoan" required/><br>
                <p id="notify" style="color: red"><i>${message}</i></p>
                <label>Mật khẩu</label>
                <input type="text" name="matkhau" required/><br>
                <input type="submit" value="Đăng kí" id="submit">
                <p> <a href="index.jsp">Trang đăng nhập</a></p>
            </form>
        </div>
    </body>
    
</html>
