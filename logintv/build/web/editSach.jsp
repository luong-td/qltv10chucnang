<!doctype html>
<style>
    .editsach{
        background: #cccccc;
        width: 100%;
        height: 100%;
    }
    label{
        margin-left: 1em;
        float: left;
        width: 150px;
        
    }
    input{
        margin-left: 80px;
        margin-bottom: 1em;
        height: 30px;
        width: 300px;
    }
    input[type="submit"]{
        margin-left: 250px;
        margin-bottom: 1em;
        height: 35px;
        width: 90px;
    }
    .tbsachedit{
        width: 100%;
        border-collapse: collapse;
    }
    .tbsachedit thead{
        width: 50px;
        background: #efefef;
        text-align: left;
    }

    .tbsachedit th, td{
        width: 200px;
        font-size: .9rem;
        padding: 1rem .5rem;
        color: var(--color-dark);
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
                <p style="margin-bottom: 5px;background: #33ccff; height: 40px; width: 80px; text-align: center"> <a href="LoadSachServlet">Quay lai</a></p>
        <%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
        <div class="editsach" >
        <h1>Edit Sách</h1>
        <form action="EditSachServlet" method="post">
            <label >Mã</label>
            <input type="text" name="ma" value="${s.ma}" readonly required><br>
        
            <label>Tên</label>
            <input type="text" name="ten" value="${s.ten}" required><br>
            
            <label>Tác giả</label>
            <input type="text" name="tacgia" value="${s.tacgia}" required><br>
            <label>Số lượng</label>
            <input type="text" name="slg" value="${s.slg}" required><br>
            <input type="submit" value="Lưu thay đổi">
        </form>
            <c:if test="${checkSua == '1'}"><script>alert("Bạn đã cập nhập thành công")</script></c:if>
            <table cellpadding="4" border=1 class="tbsachedit">
                <thead>
                <tr valign="bottom">
<!--                    <td align="left" style="width: 50px"><b>Click</b></td>-->
                    <td align="left"><b>mã sách</b></td>
                    <td align="left"><b>tên sách</b></td>
                    <td align="left"><b>tác giả</b></td>
                    <td align="left"><b>số lượng</b></td>
                </tr>
                </thead>
                <c:forEach var="i" items ="${listSach}">
                    
<!--                    <tr valign="top">
                        <td style="width: 50px">
                            
                                <input name="check" value="${i.ma} "type="checkbox">
                            
                        </td>-->
                        <td>${i.ma}</td>
                        <td>${i.ten}</td>
                        <td>${i.tacgia}</td>
                        <td>${i.slg}</td>
                    </tr>
                </c:forEach>
            </table>
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
