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
        
        <h1>Thong tin muon</h1>
        
            <table cellpadding="4" border=1 style="width: 100%;border-collapse: collapse;" >
                <thead style="width: 50px;background: #efefef;text-align: left;">
                <tr valign="bottom">
                    <td align="left" style="width: 1px"><b>ma phieu</b></td>
                    <td align="left" style="width: 900px"><b>ten user</b></td>
                    <td align="left" style="width: 900px"><b>ma sách</b></td>
                    <td align="left" style="width: 900px"><b>tên sách</b></td>
                    <td align="left" style="width: 900px"><b>ngay </b></td>
                    <td align="left" style="width: 900px"><b>tinh trang</b></td>
                </tr>
                </thead>
                <c:forEach var="i" items ="${listM}">
                    
                    <tr valign="top">
                        <td>${i.ma}</td>
                        <td >${i.ten}</td>
                        <td >${i.ms}</td>
                        <td >${i.sach}</td>
                        <td >${i.date}</td>
                        <td >${i.tt}</td>
                    </tr>
                </c:forEach>
            </table>
        
        
    
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
