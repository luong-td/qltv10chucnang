<!doctype html>
<style>
    .sub{
/*    margin-left: 600px;*/
    width: 100px;
    height: 40px;
    background: #ff6666;
/*    margin-right: auto;*/
    margin-top: 9px;
    margin-bottom: 9px;
}
</style>
<html>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Admin</title>
        <link rel="stylesheet" href="http://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
        <link rel="stylesheet" href="style.css"/>
    </head>
    <body>
        
        <div class="sidebar">
            <div class="sidebar-header">
                <h3 class="brand">
                    <span class="ti-user" style="font-size: 20px"></span>
                    <span>Quản trị viên</span>
                </h3>
                <span class="ti-menu-alt"></span>
            </div>
            
            <div class="sidebar-menu">
                <ul>
                    <li>
                        <a href="mainadmin.jsp">
                            <span class="ti-home" style="font-size: 20px"></span>
                            <span>Home</span>
                        </a>
                    </li>
                    <li>
                        <a href="LoadNhanVienServlet">
                            <span class="ti-panel" style="font-size: 20px"></span>
                            <span>Quản lí nhân viên</span>
                        </a>
                    </li>
                    <li>
                        <a href="LoadSachServlet">
                            <span class="ti-book" style="font-size: 20px"></span>
                            <span>Quản lí sách</span>
                        </a>
                    </li>
                    <li>
                        <a href="LoadMuonServlet">
                            <span class="ti-clipboard" style="font-size: 20px"></span>
                            <span>Quản lí mượn</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <span class="ti-folder" style="font-size: 20px"></span>
                            <span>Quản lí trả</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <span class="ti-time" style="font-size: 20px"></span>
                            <span>Doanh thu</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <span class="ti-mobile" style="font-size: 20px"></span>
                            <span>Contacts</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <span class="ti-settings" style="font-size: 20px"></span>
                            <span>Account</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        
        <div class="drop">
                    <div class="IMG"></div>
                    <div class="DropdownHidden">
                      <ul>
<!--                        <li>User name</li>-->
                        <li><a href="LogoutServlet" name="dangxuat">Đăng xuất</a></li>
                      </ul>
                    </div>
                </div>
        <div class="main-content">
            
            <header>
                <h1>Quản lí thư viện</h1>
                <div class="social-icons">
                    <span class="ti-bell" style="font-size: 20px"></span>
                    <span class="ti-comment" style="font-size: 20px"></span>
                </div>
            </header>
            
            <main>
                
                <%@ taglib prefix="c"
                   uri="http://java.sun.com/jsp/jstl/core" %>
        <h1>Bảng Sách</h1>
        
        
        <div class="qlsach">
        <form action="SachServlet" method="post">
        <input style="width: 800px; opacity: 0" type="hidden=">
        <input class="sub" type="submit" name="action" value="Add">
        <input class="sub" type="submit" name="action" value="Edit">
        <input class="sub" type="submit" name="action" value="Delete">
        
        <c:if test="${click == '0'}"><script>alert("Bạn phải chọn")</script></c:if>
        <c:if test="${clickXoa == '1'}"><script>alert("Bạn co muon xoa")</script></c:if>
        <c:if test="${checkXoa == '1'}"><script>alert("Bạn da xoa thanh cong")</script></c:if>
            <table cellpadding="4" border=1 class="tbsach">
                <thead>
                <tr valign="bottom">
                    <td align="left" style="width: 50px"><b>Click</b></td>
                    <td align="left"><b>mã sách</b></td>
                    <td align="left"><b>tên sách</b></td>
                    <td align="left"><b>tác giả</b></td>
                    <td align="left"><b>số lượng</b></td>
                </tr>
                </thead>
                <c:forEach var="i" items ="${listSach}">
                    
                    <tr valign="top">
                        <td style="width: 50px">
                            
                                <input name="check" value="${i.ma} "type="checkbox">
                            
                        </td>
                        <td>${i.ma}</td>
                        <td>${i.ten}</td>
                        <td>${i.tacgia}</td>
                        <td>${i.slg}</td>
                    </tr>
                </c:forEach>
            </table>
        
        </form>
            </div>
            </main>
        </div>
    </body>
    
    <script>
        const IMG = document.querySelector(".IMG");
        const Dropdown = document.querySelector(".DropdownHidden");

        const ImgClick = () => {
          Dropdown.classList.add("DropdownVisible");
        };

        IMG.addEventListener("click", ImgClick);
  </script>
</html>
