<!doctype html>
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
                        <a href="LoadMuon">
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
                
                <h2 class="dash-title">Tổng quan</h2>
                
                <div class="dash-cards">
                    <div class="card-single">
                        <div class="card-body">
                            <span class="ti-briefcase"></span>
                            <div>
                                <h5>Đề tài nhóm 7</h5>
                                <h4>Ứng dụng quản lí thư viện</h4>
                            </div>
                        </div>
                        <div class="card-footer">
                            <a href="">Wiew all</a>
                        </div>
                    </div>
                    
                    <div class="card-single">
                        <div class="card-body">
                            <span class="ti-reload"></span>
                            <div>
                                <h5>Kiểu ứng dụng</h5>
                                <h4>Website(Servlet, Sql server)</h4>
                            </div>
                        </div>
                        <div class="card-footer">
                            <a href="">Wiew all</a>
                        </div>
                    </div>
                    
                    <div class="card-single">
                        <div class="card-body">
                            <span class="ti-check-box"></span>
                            <div>
                                <h5>Trạng thái</h5>
                                <h4>Đã hoàn thành</h4>
                            </div>
                        </div>
                        <div class="card-footer">
                            <a href="">Wiew all</a>
                        </div>
                    </div>
                </div>
                
                
                <section class="recent">
                    <div class="activity-grid">
                        <div class="activity-card">
                            <h3>Thành viên</h3>

                            <table>
                                <thead>
                                    <tr>
                                        <th>Họ Tên</th>
                                        <th>Mã sinh viên</th>
                                        <th>Start date</th>
                                        <th>End date</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Trần Đức Lương</td>
                                        <td>B19DCCN411</td>
                                        <td>24/04/2022</td>
                                        <td>07/05/2022</td>
                                        <td>
                                            <span class="badge
                                                  success">Success</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Vũ Quang Ninh</td>
                                        <td>B19DCCN459</td>
                                        <td>24/04/2022</td>
                                        <td>07/05/2022</td>
                                        <td>
                                            <span class="badge
                                                  success">Success</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Nguyễn Công Sơn</td>
                                        <td>B19DCCN551</td>
                                        <td>24/04/2022</td>
                                        <td>07/05/2022</td>
                                        <td>
                                            <span class="badge
                                                  success">Success</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Nguyễn Tá Tiến</td>
                                        <td>B19DCCN579</td>
                                        <td>24/04/2022</td>
                                        <td>07/05/2022</td>
                                        <td>
                                            <span class="badge
                                                  success">Success</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Trần Bùi Như Khánh</td>
                                        <td>B19DCAT108</td>
                                        <td>24/04/2022</td>
                                        <td>07/05/2022</td>
                                        <td>
                                            <span class="badge
                                                  success">Success</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Nguyễn Thái Sơn</td>
                                        <td>B19DCCN556</td>
                                        <td>24/04/2022</td>
                                        <td>07/05/2022</td>
                                        <td>
                                            <span class="badge
                                                  success">Success</span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        
                        <div class="summary">
                            <div class="summary-card">
                                <div class="summary-single">
                                    <span class="ti-id-badge"></span>
                                    <div>
                                        <h5> 6 </h5>
                                        <small>Số thành viên</small>
                                    </div>
                                </div>
                                <div class="summary-single">
                                    <span class="ti-calendar"></span>
                                    <div>
                                        <h5>9</h5>
                                        <small>Điểm số</small>
                                    </div>
                                </div>
                                <div class="summary-single">
                                    <span class="ti-face-smile"></span>
                                    <div>
                                        <h5>12</h5>
                                        <small>Update dữ liệu</small>
                                    </div>
                                </div>
                            </div>
                            
<!--                            <div class="bday-card">
                                <div class="bday-img"></div>
                                <div class="bday-info">
                                    <h5>Dway F.Sanders</h5>
                                    <small>Brithday Today</small>
                                    
                                    <div>
                                        <button>
                                            <span class="ti-gift"></span>
                                            Wish him
                                        </button>
                                    </div>
                                </div>
                            </div>-->
                        </div>
                    </div>
                </section>
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
