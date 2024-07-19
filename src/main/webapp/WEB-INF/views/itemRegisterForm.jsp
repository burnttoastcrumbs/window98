<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <title>Tables - SB Admin</title>
  <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
  <link href="css/styles.css" rel="stylesheet" />
  <link rel="stylesheet" href="css/form.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body class="sb-nav-fixed">
<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
  <!-- Navbar Brand-->
  <a class="navbar-brand ps-3" href="index.html">BYEZ</a>
  <!-- Sidebar Toggle-->
  <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
  <!-- Navbar Search-->
  <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
    <div class="input-group">
      <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
      <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
    </div>
  </form>
  <!-- Navbar-->
  <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
      <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
        <li><a class="dropdown-item" href="#!">Settings</a></li>
        <li><a class="dropdown-item" href="#!">Activity Log</a></li>
        <li><hr class="dropdown-divider" /></li>
        <li><a class="dropdown-item" href="#!">Logout</a></li>
      </ul>
    </li>
  </ul>
</nav>
<div id="layoutSidenav">
  <div id="layoutSidenav_nav">
    <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
      <div class="sb-sidenav-menu">
        <div class="nav">
          <div class="sb-sidenav-menu-heading">Core</div>
          <a class="nav-link" href="index.html">
            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
            Dashboard
          </a>
          <div class="sb-sidenav-menu-heading">Interface</div>
          <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
            <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
            Layouts
            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
          </a>
          <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
            <nav class="sb-sidenav-menu-nested nav">
              <a class="nav-link" href="layout-static.html">Static Navigation</a>
              <a class="nav-link" href="layout-sidenav-light.html">Light Sidenav</a>
            </nav>
          </div>
          <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
            <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
            Pages
            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
          </a>
          <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
            <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
              <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                Authentication
                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
              </a>
              <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                <nav class="sb-sidenav-menu-nested nav">
                  <a class="nav-link" href="login.html">Login</a>
                  <a class="nav-link" href="register.html">Register</a>
                  <a class="nav-link" href="password.html">Forgot Password</a>
                </nav>
              </div>
              <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">
                Error
                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
              </a>
              <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                <nav class="sb-sidenav-menu-nested nav">
                  <a class="nav-link" href="401.html">401 Page</a>
                  <a class="nav-link" href="404.html">404 Page</a>
                  <a class="nav-link" href="500.html">500 Page</a>
                </nav>
              </div>
            </nav>
          </div>
          <div class="sb-sidenav-menu-heading">Addons</div>
          <a class="nav-link" href="charts.html">
            <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
            Charts
          </a>
          <a class="nav-link" href="item.html">
            <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
            상품
          </a>
        </div>
      </div>
      <div class="sb-sidenav-footer">
        <div class="small">Logged in as:</div>
        BYEZ
      </div>
    </nav>
  </div>
  <div id="layoutSidenav_content">
    <main>
      <div class="container-fluid px-4">
        <h1 class="mt-4">상품 <span >등록</span></h1>
        <ol class="breadcrumb mb-4">
          <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
          <li class="breadcrumb-item active">
            <a href="item.html">상품</a></li>
          <li class="breadcrumb-item active">
            상품 등록
          </li>
        </ol>
        <!-- <div class="card mb-4">
            <div class="card-body">
                DataTables is a third party plugin that is used to generate the demo table below. For more information about DataTables, please visit the
                <a target="_blank" href="https://datatables.net/">official DataTables documentation</a>
                .
            </div>
        </div> -->
        <div class="card mb-4">
          <div class="card-header">
            <i class="fas fa-table me-1"></i>
            상품 등록 폼
          </div>
          <div class="card-body">
            <div class="registerForm">
              <form action="">
                <table>
                  <tr>
                    <td>num</td>
                    <td><input type="text" placeholder="num" name="num"></td>
                  </tr>
                  <tr>
                    <td>name</td>
                    <td><input type="text" placeholder="name" name="name"></td>
                  </tr>
                  <tr>
                    <td>price</td>
                    <td><input type="text" placeholder="price" name="price"></td>
                  </tr>
                  <tr>
                    <td>disc_price</td>
                    <td><input type="text" placeholder="disc_price" name="disc_price"></td>
                  </tr>
                  <tr>
                    <td>main_img</td>
                    <td><input type="text" placeholder="main_img" name="main_img"></td>
                  </tr>
                  <tr>
                    <td>item_type</td>
                    <td><input type="text" placeholder="item_type" name="item_type"></td>
                  </tr>
                  <tr>
                    <td>review_cnt</td>
                    <td><input type="text" placeholder="review_cnt" name="review_cnt"></td>
                  </tr>
                  <tr>
                    <td>like_cnt</td>
                    <td><input type="text" placeholder="like_cnt" name="like_cnt"></td>
                  </tr>
                  <tr>

                    <td>review_rate</td>
                    <td><input type="text" placeholder="review_rate" name="review_rate"></td>
                  </tr>
                  <tr>
                    <td>cust_type</td>
                    <td><input type="text" placeholder="cust_type" name="cust_type"></td>
                  </tr>
                  <tr>
                    <td>disc_rate</td>
                    <td><input type="text" placeholder="disc_rate" name="disc_rate"></td>
                  </tr>
                  <tr>
                    <td>period</td>
                    <td><input type="text" placeholder="period" name="period"></td>
                  </tr>
                  <tr>
                    <td>size</td>
                    <td><input type="text" placeholder="size" name="size"></td>
                  </tr>
                  <tr>
                    <td>col</td>
                    <td><input type="text" placeholder="col" name="col"></td>
                  </tr>
                  <tr>
                    <td>remark</td>
                    <td><input type="text" placeholder="remark" name="remark"></td>
                  </tr>
                  <tr>
                    <td>detail_name</td>
                    <td><input type="text" placeholder="detail_name" name="detail_name"></td>
                  </tr>
                  <tr>
                    <td>comt</td>
                    <td><input type="text" placeholder="comt" name="comt"></td>
                  </tr>
                  <tr>
                    <td>detail_img</td>
                    <td><input type="text" placeholder="detail_img" name="detail_img"></td>
                  </tr>
                  <tr>
                    <td>rel_date</td>
                    <td><input type="text" placeholder="rel_date" name="rel_date"></td>
                  </tr>
                  <tr>
                    <td>gr_date</td>
                    <td><input type="text" placeholder="gr_date" name="gr_date"></td>
                  </tr>
                  <tr>
                    <td>mfg_corp</td>
                    <td><input type="text" placeholder="mfg_corp" name="mfg_corp"></td>
                  </tr>
                  <tr>
                    <td>mfg_name</td>
                    <td><input type="text" placeholder="mfg_name" name="mfg_name"></td>
                  </tr>
                  <tr>
                    <td>mfg_date</td>
                    <td><input type="text" placeholder="mfg_date" name="mfg_date"></td>
                  </tr>
                  <tr>
                    <td>view_cnt</td>
                    <td><input type="text" placeholder="view_cnt" name="view_cnt"></td>
                  </tr>
                  <tr>
                    <td>model</td>
                    <td><input type="text" placeholder="model" name="model"></td>
                  </tr>
                  <tr>
                    <td>stock_qty</td>
                    <td><input type="text" placeholder="stock_qty" name="stock_qty"></td>
                  </tr>
                  <tr>
                    <td>origin</td>
                    <td><input type="text" placeholder="origin" name="origin"></td>
                  </tr>
                  <tr>
                    <td>state_code</td>
                    <td><input type="text" placeholder="state_code" name="state_code"></td>
                  </tr>
                  <tr>
                    <td>matr</td>
                    <td><input type="text" placeholder="matr" name="matr"></td>
                  </tr>
                  <tr>
                    <td>code</td>
                    <td><input type="text" placeholder="code" name="code"></td>
                  </tr>
                  <tr>
                    <td>sales_qty</td>
                    <td><input type="text" placeholder="sales_qty" name="sales_qty"></td>
                  </tr>
                  <tr>
                    <td>caut</td>
                    <td><input type="text" placeholder="caut" name="caut"></td>
                  </tr>
                </table>
              </form>
            </div>
          </div>
        </div>
      </div>
    </main>
    <footer class="py-4 bg-light mt-auto">
      <div class="container-fluid px-4">
        <div class="d-flex align-items-center justify-content-between small">
          <div class="text-muted">Copyright &copy; BYEZ 2024</div>
          <div>
            <a href="#">Privacy Policy</a>
            &middot;
            <a href="#">Terms &amp; Conditions</a>
          </div>
        </div>
      </div>
    </footer>
  </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="js/scripts.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
<script src="js/datatables-simple-demo.js"></script>
</body>
</html>
