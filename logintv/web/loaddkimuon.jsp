<!doctype html>
<style>
    .tims{
        margin-bottom: 0px;
        background: #ffffcc;
        height: 60px;
        border-radius: 5px;
    }
    
/*    input{
        margin-left: 80px;
        margin-bottom: 1em;
        height: 30px;
        width: 300px;
    }*/
    
    input[name="tim"]{
        background: #cccccc;
        margin-left: 150px;
        margin-bottom: 1em;
        margin-top: 1em;
        height: 35px;
        width: 90px;
    }
    input[type="search"]{
        margin-left: 10px;
        margin-bottom: 1em;
        height: 35px;
        width: 300px;
    }
    .qlsach{
    background: black;
    border-radius: 7px;
    width: 100%;
}
.qlsach table{
    width: 100%;
    border-collapse: collapse;
}
.qlsach thead{
    width: 50px;
    background: #efefef;
    text-align: left;
}

.qlsach th, td{
    width: 200px;
    font-size: .9rem;
    padding: 1rem .5rem;
    color: var(--color-dark);
}
.qlsach sub{
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
                    <span>Doc gia</span>
                </h3>
                <span class="ti-menu-alt"></span>
            </div>
            
            <div class="sidebar-menu">
                <ul>
                    <li>
                        <a href="maindg.jsp">
                            <span class="ti-home" style="font-size: 20px"></span>
                            <span>Home</span>
                        </a>
                    </li>
                    <li>
                        <a href="LoadDkiMuonServlet">
                            <span class="ti-book" style="font-size: 20px"></span>
                            <span>Dang ki muon</span>
                        </a>
                    </li>
                    
                    <li>
                        <a href="LoadMuonServlet">
                            <span class="ti-clipboard" style="font-size: 20px"></span>
                            <span>Thong tin mượn</span>
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
        
        <h1>Dang ki muon</h1>
        <div class="tims">
            <form action="TimServlet" method="post">
                
            <span class="ti-search" style="font-size: 20px; margin-left: 10px"></span>
            <input type="search" name = "nhap" placeholder="Nhap ten sach" required>
            <input type="submit" name="tim" value="tim kiem">
            
        </form>
            </div>
        <div class="qlsach" style="background: #cccccc">
        <form action="DkiMuonServlet" method="post">
            <br>
        <input style="width: 890px; opacity: 0" type="hidden=">
        <input class="sub" type="submit" style="width: 100px; background: #ff6666; margin-bottom: 1em;height: 35px;" name="action" value="Dang ki muon">
<!--        <input class="sub" type="submit" name="action" value="Edit">
        <input class="sub" type="submit" name="action" value="Delete">-->
        
        <c:if test="${clickk == '0'}"><script>alert("Bạn phải chọn")</script></c:if>
        <c:if test="${clickDki == '1'}"><script>alert("Bạn da dang ki muon thanh cong")</script></c:if>
        <c:if test="${checkDki == '1'}"><script>alert("So luong khong du mu a")</script></c:if>
            <table cellpadding="4" border=1 style="width: 100%;border-collapse: collapse;" >
                <thead style="width: 50px;background: #efefef;text-align: left;">
                <tr valign="bottom">
                    <td align="left" style="width: 1px"><b>Click</b></td>
                    <td align="left" style="width: 900px"><b>mã sách</b></td>
                    <td align="left" style="width: 900px"><b>tên sách</b></td>
                    <td align="left" style="width: 900px"><b>tác giả</b></td>
                    <td align="left" style="width: 900px"><b>số lượng</b></td>
                </tr>
                </thead>
                <c:forEach var="i" items ="${listSach}">
                    
                    <tr valign="top">
                        <td>
                            
                                <input style="" name="checkk" value="${i.ma} " type="checkbox">
                            
                        </td>
                        <td >${i.ma}</td>
                        <td >${i.ten}</td>
                        <td >${i.tacgia}</td>
                        <td >${i.slg}</td>
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
