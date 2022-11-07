<%-- 
    Document   : index
    Created on : Sep 29, 2022, 8:38:12 PM
    Author     : admin
--%>
<%@page import="DAO.ReservationDAO"%>
<%@page import="DAO.TableTypeDAO"%>
<%@page import="entity.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.TableReservationDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->

<head>
    <meta charset="utf-8" />
    <title>Restoran - Bootstrap Restaurant Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="keywords" />
    <meta content="" name="description" />

    <%-- my stylesheet --%>
    <link href="css/mycss.css" rel="stylesheet" />
    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon" />

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
        href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&family=Pacifico&display=swap"
        rel="stylesheet"
        />

    <!-- Icon Font Stylesheet -->
    <link
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
        rel="stylesheet"
        />
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
        rel="stylesheet"
        />

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet" />
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />
    <link
        href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css"
        rel="stylesheet"
        />
    <link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous"
        />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet" />
    <%-- created style --%>
</head>

<body>
    <div class="container-xxl bg-white p-0">
        <!-- Spinner Start -->
        <div
            id="spinner"
            class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center"
            data=123>
            <div
                class="spinner-border text-primary"
                style="width: 3rem; height: 3rem"
                role="status"
                >
                <span class="sr-only">Loading...</span>
            </div>
            <%-- <a href="" class="btn btn-primary py-2 px-4">Book A Table</a>
            <button class="btn">
              <a
                data-toggle="modal"
                data-target="#loginModal"
                class="nav-item nav-link"
                ><i class="fa fa-user"></i> Login</a
              >
            </button> --%>
        </div>
        <!-- Spinner End -->

        <!-- Navbar & Hero Start -->
        <div class="container-xxl position-relative p-0">
            <nav
                class="navbar navbar-expand-lg navbar-dark bg-dark px-4 px-lg-5 py-3 py-lg-0"
                >
                <a href="HomeServlet" class="navbar-brand p-0">
                    <h1 class="text-primary m-0">
                        <i class="fa fa-utensils me-3"></i>Restoran
                    </h1>
                    <!-- <img src="img/logo.png" alt="Logo"> -->
                </a>
                <button
                    class="navbar-toggler"
                    type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#navbarCollapse"
                    >
                    <span class="fa fa-bars"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav ms-auto py-0 pe-4">
                        <a href="HomeServlet" class="nav-item nav-link active">Home</a>
                        <a href="about.jsp" class="nav-item nav-link">About</a>
                        <a href="service.jsp" class="nav-item nav-link">Service</a>
                        <a href="menu.jsp" class="nav-item nav-link">Menu</a>
                        <div class="nav-item dropdown">
                            <a
                                href="#"
                                class="nav-link dropdown-toggle"
                                data-bs-toggle="dropdown"
                                >Pages</a
                            >
                            <div class="dropdown-menu m-0">
                                <a href="booking.jsp" class="dropdown-item">Booking</a>
                                <a href="team.jsp" class="dropdown-item">Our Team</a>
                                <%-- <a href="testimonial.jsp" class="dropdown-item"
                                   >Testimonial</a
                                > --%>
                            </div>
                        </div>
                        <a href="contact.jsp" class="nav-item nav-link">Contact</a>
                    </div>
                    <a href="${request.contextPath}/SWP_Project/BookingServlet" class="btn btn-primary py-2 px-4">Book A Table</a>
                    <%String loginUser = (String) session.getAttribute("userLogin");
                    if (loginUser == null) {%>
                    <button class="btn">
                        <a
                            data-toggle="modal"
                            data-target="#loginModal"
                            class="nav-item nav-link"
                            ><i class="fa fa-user"></i> Login</a
                        >
                    </button>
                    <%} else {%>
                    <%-- <i class="fa fa-user ml-3"></i>   <%=loginUser%>
                    <a class="ml-3" href="LoginServlet"><i class="fa fa-times"> Logout</i></a> --%>

                            <li class="nav-item dropdown">
                                <a class="nav-icon dropdown-toggle d-inline-block d-sm-none" href="#" data-bs-toggle="dropdown">
                                    <i class="align-middle" data-feather="settings"></i>
                                </a>

                                <a class="nav-link dropdown-toggle d-none d-sm-inline-block" href="#" data-bs-toggle="dropdown">
                                    <i class="fa fa-user ml-3"></i>  ${userLogin} <span class="text-dark"></span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-end">
                                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#UpdateModal"><i class="align-middle me-1" data-feather="user"></i> Profile</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="LoginServlet">Log out</a>
                                </div>
                            </li>
                    <%}%>
                </div>
            </nav>
            <div class="modal fade" id="bill-modal" tabindex="-1" aria-labelledby="modal-title" aria-hiden="true" style="display: none;" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="modal-title">View more table</h5>
                            <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>

                        <div class="modal-body">
                            <table id="table_id" class="stripe hover order-column">
                                <thead>
                                    <tr>
                                        <th>Reservation ID</th>
                                        <th>Table Number</th>
                                        <th>Date</th>
                                        <th>Amount Of People</th>
                                        <th></th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <% Account acc = (Account) session.getAttribute("loggedAccount");
                                        ReservationDAO dao = new ReservationDAO();
                                        if (acc != null) {

                                            ArrayList<Reservation> list = dao.getCusReservation(acc.getAccount_id());

                                            for (int i = 0; i < list.size(); i++) {%>
                                    <tr id="clear">
                                        <td id="rid"><%=list.get(i).getReservation_id()%></td>
                                        <td id="tid"><%=list.get(i).getTable_id()%></td>
                                        <td><%=list.get(i).getDateReservation()%></td>
                                        <td><%=list.get(i).getNoPeople()%></td>
                                        <td>
                                            <button class="btn btn-primary" id="remove">
                                                <i class="bi bi-x"></i>
                                            </button>
                                        </td>
                                    </tr>
                                    <%}%>
                                    <%}%>
                                </tbody>
                            </table>
                        </div>

                        <div class=" modal-footer ">
                            <button type="button " class="btn btn-secondary " data-bs-dismiss="modal">Close</button>

                        </div>

                    </div>
                </div>
            </div>
                <%-- UpdateModal --%>
            <div id="UpdateModal" class="modal fade" role="dialog">
                <div class="modal-dialog modal-lg" role="content">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3 class="modal-title">Update Account</h3>

                            <button type="button" class="close" data-dismiss="modal">
                                &times;
                            </button>
                        </div>
                        <div class="modal-body">
                            <form name="updateform" action="ManageProfileServlet" method="post" onSubmit="return validateUpdateForm(event);"
                                  oninput='RePassword.setCustomValidity(RePassword.value != password.value ? "Passwords do not match." : "")'>
                                <input type="hidden" name="id" value=${loggedAccount.account_id}>
                                <div class="form-group row">
                                    <label
                                        for=""
                                        class="col-12 col-md-3 col-form-label"
                                        >Username</label
                                    >

                                    <div class="col-12 col-md-4">
                                        <input
                                            type="text"
                                            class="form-control"
                                            id="userName"
                                            name="userName"
                                            placeholder=${loggedAccount.username}
                                            value=${loggedAccount.username}
                                            />
                                        
                                    </div>
                                    <div class="col-12 col-md-4">
                                      <span style="color:red" id="unameErr">
                                    </div>

                                </div>
                                <div class="form-group row">
                                    <label
                                        for=""
                                        class="col-12 col-md-3 col-form-label"
                                        >Password</label
                                    >

                                    <div class="col-12 col-md-4">
                                        <input
                                            type="password"
                                            class="form-control"
                                            id="password"
                                            name="password"
                                            placeholder=${loggedAccount.password}
                                            value=${loggedAccount.password}
                                            />
                                    </div>
                                    <div class="col-12 col-md-4">
                                      <span style="color:red" id="passwordErr">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label
                                        for=""
                                        class="col-12 col-md-3 col-form-label"
                                        >Confirm Password</label
                                    >

                                    <div class="col-12 col-md-4">
                                        <input
                                            type="RePassword"
                                            class="form-control"
                                            id="RePassword"
                                            name="RePassword"
                                            placeholder="Please re-enter password"
                                            />
                                    </div>
                                    <div class="col-12 col-md-4">
                                      <span style="color:red" id="RePasswordErr">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label
                                        for=""
                                        class="col-12 col-md-3 col-form-label"
                                        >Email</label
                                    >

                                    <div class="col-12 col-md-4">
                                        <input
                                            type="text"
                                            class="form-control"
                                            id="email"
                                            name="email"
                                            placeholder=${loggedAccount.email}
                                            value=${loggedAccount.email}
                                            />
                                    </div>
                                    <div class="col-12 col-md-4">
                                      <span style="color:red" id="emailErr">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label
                                        for=""
                                        class="col-12 col-md-3 col-form-label"
                                        >Phone</label
                                    >

                                    <div class="col-12 col-md-4">
                                        <input
                                            type="text"
                                            class="form-control"
                                            id="phone"
                                            name="phone"
                                            placeholder="Please enter 10 digits"
                                            value=${loggedAccount.phone}
                                            />

                                    </div>
                                    <div class="col-12 col-md-4">
                                      <span style="color:red" id="phoneErr">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label
                                        for=""
                                        class="col-12 col-md-3 col-form-label"
                                        >Name</label
                                    >

                                    <div class="col-12 col-md-4">
                                        <input
                                            type="text"
                                            class="form-control"
                                            id="name"
                                            name="name"
                                            placeholder=${userLogin}
                                            value=${userLogin}
                                            />
                                    </div>
                                    <div class="col-12 col-md-4">
                                      <span style="color:red" id="nameErr">
                                    </div>
                                </div>

                                <div class="form-row mt-4">
                                    <div class="offset-md-4 col-md-10">
                                        <button type="submit" class="btn btn-primary btn-sm ml-1">
                                            Update
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

                    <%--  --%>
            <div id="loginModal" class="modal fade" role="dialog">
                <div class="modal-dialog modal-lg" role="content">
                    <!--Login Modal content-->

                    <div class="modal-content">
                        <div class="modal-header">
                            <h3 class="modal-title">Login</h3>

                            <button type="button" class="close" data-dismiss="modal">
                                &times;
                            </button>
                        </div>
                        <div class="modal-body">
                            <form name="loginform" action="LoginServlet" method="post" onSubmit="return validateLoginForm(event);">
                                <div class="form-group row">
                                    <label
                                        for=""
                                        class="col-12 col-md-3 col-form-label"
                                        >Username</label
                                    >

                                    <div class="col-12 col-md-4">
                                        <input
                                            type="text"
                                            class="form-control"
                                            id="userName"
                                            name="userName"
                                            placeholder="enter username"
                                            value="${resusername}"
                                            />
                                    </div>
                                    <div class="col-12 col-md-4">
                                      <span style="color:red" id="LunameErr">
                                    </div>

                                </div>
                                <div class="form-group row">
                                    <label
                                        for=""
                                        class="col-12 col-md-3 col-form-label"
                                        >Password</label
                                    >

                                    <div class="col-12 col-md-4">
                                        <input
                                            type="password"
                                            class="form-control"
                                            id="password"
                                            name="password"
                                            placeholder="enter password"
                                            value="${respassword}"
                                            />
                                    </div>
                                    <div class="col-12 col-md-4">
                                      <span style="color:red" id="LpasswordErr">
                                    </div>
                                </div>
                                <div class="form-row mt-4">
                                    <div style="color:red" class="offset-md-4 col-md-10">
                                        ${LoginError}
                                    </div>
                                </div>
                                <div class="form-row mt-4">
                                    <div class="offset-md-4 col-md-10">
                                        <button type="submit" class="btn btn-primary btn-sm ml-1">
                                            Login
                                        </button>
                                        <button type="button" id="register-btn" data-toggle="modal"
                                           data-target="#registerModal" class="btn btn-secondary btn-sm ml">
                                            Register
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>


            <div id="registerModal" class="modal fade" role="dialog">
                <div class="modal-dialog modal-lg" role="content">
                    <!--Register Modal content-->

                    <div class="modal-content">
                        <div class="modal-header">
                            <h3 class="modal-title">Register</h3>

                            <button type="button" class="close" data-dismiss="modal">
                                &times;
                            </button>
                        </div>
                        <div class="modal-body">
                            <form name="registerform" action="RegisterServlet" method="post" onSubmit="return validateRegisterForm0(event);"
                                  oninput='RePassword.setCustomValidity(RePassword.value != password.value ? "Passwords do not match." : "")'>
                                <div class="form-group row">
                                    <label
                                        for=""
                                        class="col-12 col-md-3 col-form-label"
                                        >Username</label
                                    >

                                    <div class="col-12 col-md-4">
                                        <input
                                            type="text"
                                            class="form-control"
                                            id="userName"
                                            name="userName"
                                            placeholder="Please enter username"
                                            />
                                        
                                    </div>
                                    <div class="col-12 col-md-4">
                                      <span style="color:red" id="unameErr">
                                    </div>

                                </div>
                                <div class="form-group row">
                                    <label
                                        for=""
                                        class="col-12 col-md-3 col-form-label"
                                        >Password</label
                                    >

                                    <div class="col-12 col-md-4">
                                        <input
                                            type="password"
                                            class="form-control"
                                            id="password"
                                            name="password"
                                            placeholder="Please enter password"
                                            />
                                    </div>
                                    <div class="col-12 col-md-4">
                                      <span style="color:red" id="passwordErr">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label
                                        for=""
                                        class="col-12 col-md-3 col-form-label"
                                        >Confirm Password</label
                                    >

                                    <div class="col-12 col-md-4">
                                        <input
                                            type="RePassword"
                                            class="form-control"
                                            id="RePassword"
                                            name="RePassword"
                                            placeholder="Please re-enter password"
                                            />
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label
                                        for=""
                                        class="col-12 col-md-3 col-form-label"
                                        >Email</label
                                    >

                                    <div class="col-12 col-md-4">
                                        <input
                                            type="text"
                                            class="form-control"
                                            id="email"
                                            name="email"
                                            placeholder="Please enter your email"
                                            />
                                    </div>
                                    <div class="col-12 col-md-4">
                                      <span style="color:red" id="emailErr">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label
                                        for=""
                                        class="col-12 col-md-3 col-form-label"
                                        >Phone</label
                                    >

                                    <div class="col-12 col-md-4">
                                        <input
                                            type="text"
                                            class="form-control"
                                            id="phone"
                                            name="phone"
                                            placeholder="Please enter 10 digits"
                                            />

                                    </div>
                                    <div class="col-12 col-md-4">
                                      <span style="color:red" id="phoneErr">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label
                                        for=""
                                        class="col-12 col-md-3 col-form-label"
                                        >Name</label
                                    >

                                    <div class="col-12 col-md-4">
                                        <input
                                            type="text"
                                            class="form-control"
                                            id="name"
                                            name="name"
                                            placeholder="Please enter your name"
                                            />
                                    </div>
                                    <div class="col-12 col-md-4">
                                      <span style="color:red" id="nameErr">
                                    </div>
                                </div>

                                <div class="form-row mt-4">
                                    <div class="offset-md-4 col-md-10">
                                        <button type="submit" class="btn btn-primary btn-sm ml-1">
                                            Register
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>


            <div class="container-xxl py-5 bg-dark hero-header mb-5">
                <div class="container my-5 py-5">
                    <div class="row align-items-center g-5">
                        <div class="col-lg-6 text-center text-lg-start">
                            <h1 class="display-3 text-white animated slideInLeft">
                                Enjoy Our<br />Delicious Meal
                            </h1>
                            <p class="text-white animated slideInLeft mb-4 pb-2">
                                
                            </p>
                            <a
                                href="${request.contextPath}/SWP_Project/BookingServlet"
                                class="btn btn-primary py-sm-3 px-sm-5 me-3 animated slideInLeft"
                                >Book A Table</a
                            >
                        </div>
                        <div class="col-lg-6 text-center text-lg-end overflow-hidden">
                            <img class="img-fluid" src="img/hero.png" alt="" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Navbar & Hero End -->

        <!-- Service Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="row g-4">
                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="service-item rounded pt-3">
                            <div class="p-4">
                                <i class="fa fa-3x fa-user-tie text-primary mb-4"></i>
                                <h5>Master Chefs</h5>
                                <p>
                                    30 years of experience in cooking
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="service-item rounded pt-3">
                            <div class="p-4">
                                <i class="fa fa-3x fa-utensils text-primary mb-4"></i>
                                <h5>Quality Food</h5>
                                <p>
                                    We use only the best ingredients
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="service-item rounded pt-3">
                            <div class="p-4">
                                <i class="fa fa-3x fa-cart-plus text-primary mb-4"></i>
                                <h5>Online table reservation</h5>
                                <p>
                                    Reserve your table before your arrival
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.7s">
                        <div class="service-item rounded pt-3">
                            <div class="p-4">
                                <i class="fa fa-3x fa-headset text-primary mb-4"></i>
                                <h5>24/7 Service</h5>
                                <p>
                                    We are always here to help you
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Service End -->

        <!-- About Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="row g-5 align-items-center">
                    <div class="col-lg-6">
                        <div class="row g-3">
                            <div class="col-6 text-start">
                                <img
                                    class="img-fluid rounded w-100 wow zoomIn"
                                    data-wow-delay="0.1s"
                                    src="img/about-1.jpg"
                                    />
                            </div>
                            <div class="col-6 text-start">
                                <img
                                    class="img-fluid rounded w-75 wow zoomIn"
                                    data-wow-delay="0.3s"
                                    src="img/about-2.jpg"
                                    style="margin-top: 25%"
                                    />
                            </div>
                            <div class="col-6 text-end">
                                <img
                                    class="img-fluid rounded w-75 wow zoomIn"
                                    data-wow-delay="0.5s"
                                    src="img/about-3.jpg"
                                    />
                            </div>
                            <div class="col-6 text-end">
                                <img
                                    class="img-fluid rounded w-100 wow zoomIn"
                                    data-wow-delay="0.7s"
                                    src="img/about-4.jpg"
                                    />
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <h5
                            class="section-title ff-secondary text-start text-primary fw-normal"
                            >
                            About Us
                        </h5>
                        <h1 class="mb-4">
                            Welcome to
                            <i class="fa fa-utensils text-primary me-2"></i>Restoran
                        </h1>
                        <p class="mb-4">
                            Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit.
                            Aliqu diam amet diam et eos erat ipsum et lorem et sit, sed stet
                            lorem sit.
                        </p>
                        <p class="mb-4">
                            Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit.
                            Aliqu diam amet diam et eos. Clita erat ipsum et lorem et sit,
                            sed stet lorem sit clita duo justo magna dolore erat amet
                        </p>
                        <div class="row g-4 mb-4">
                            <div class="col-sm-6">
                                <div
                                    class="d-flex align-items-center border-start border-5 border-primary px-3"
                                    >
                                    <h1
                                        class="flex-shrink-0 display-5 text-primary mb-0"
                                        data-toggle="counter-up"
                                        >
                                        ${tablesTotal}
                                    </h1>
                                    <div class="ps-4">
                                        <p class="mb-0">Years of</p>
                                        <h6 class="text-uppercase mb-0">Experience</h6>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div
                                    class="d-flex align-items-center border-start border-5 border-primary px-3"
                                    >
                                    <h1
                                        class="flex-shrink-0 display-5 text-primary mb-0"
                                        data-toggle="counter-up"
                                        >
                                        {availableTables}
                                    </h1>
                                    <div class="ps-4">
                                        <p class="mb-0">Available</p>
                                        <h6 class="text-uppercase mb-0">Table</h6>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div
                                    class="d-flex align-items-center border-start border-5 border-primary px-3"
                                    >
                                    <h1
                                        class="flex-shrink-0 display-5 text-primary mb-0"
                                        data-toggle="counter-up"
                                        >
                                        ${reservedTables}
                                    </h1>
                                    <div class="ps-4">
                                        <p class="mb-0">Reserved</p>
                                        <h6 class="text-uppercase mb-0">Table</h6>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div
                                    class="d-flex align-items-center border-start border-5 border-primary px-3"
                                    >
                                    <h1
                                        class="flex-shrink-0 display-5 text-primary mb-0"
                                        data-toggle="counter-up"
                                        >
                                        ${occupiedTables}
                                    </h1>
                                    <div class="ps-4">
                                        <p class="mb-0">Occupied</p>
                                        <h6 class="text-uppercase mb-0">Table</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#reg-modal">
                            View More
                        </button>
                        <div class="modal fade" id="reg-modal" tabindex="-1" aria-labelledby="modal-title" aria-hiden="true" style="display: none;" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="modal-title">View more table</h5>
                                        <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>

                                    <div class="modal-body">
                                        <table id="table_id1" class="stripe hover compact order-column">
                                            <thead>
                                                <tr>
                                                    <th>Table no.</th>
                                                    <th>Type of table</th>
                                                    <th>Status</th>
                                                </tr>
                                            </thead>
                                            <%
                                                TableReservationDAO tdao = new TableReservationDAO();
                                                ArrayList<Table> tables = tdao.getTables();
                                                TableTypeDAO ttdao = new TableTypeDAO();
                                                ArrayList<TableType> tts = ttdao.getAllListType();
                                            %>
                                            <tbody>

                                                <%for (int i = 0;
                                                            i < tables.size();
                                                            i++) {%>
                                                <tr>
                                                    <td><%=tables.get(i).getTableID()%></td>
                                                    <td><%=tables.get(i).getTabletypeID()%></td>
                                                    <td><%=tables.get(i).getStatus()%></td>
                                                </tr>
                                                <%}%>

                                            </tbody>
                                        </table>
                                    </div>

                                    <div class=" modal-footer ">
                                        <button type="button " class="btn btn-secondary " data-bs-dismiss="modal">Close</button>

                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- About End -->

        <!-- Menu Start -->
        <%-- <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h5
                        class="section-title ff-secondary text-center text-primary fw-normal"
                        >
                        Food Menu
                    </h5>
                    <h1 class="mb-5">Most Popular Items</h1>
                </div>
                <div class="tab-class text-center wow fadeInUp" data-wow-delay="0.1s">
                    <ul
                        class="nav nav-pills d-inline-flex justify-content-center border-bottom mb-5"
                        >
                        <li class="nav-item">
                            <a
                                class="d-flex align-items-center text-start mx-3 ms-0 pb-3 active"
                                data-bs-toggle="pill"
                                href="#tab-1"
                                >
                                <i class="fa fa-coffee fa-2x text-primary"></i>
                                <div class="ps-3">
                                    <small class="text-body">Popular</small>
                                    <h6 class="mt-n1 mb-0">Breakfast</h6>
                                </div>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a
                                class="d-flex align-items-center text-start mx-3 pb-3"
                                data-bs-toggle="pill"
                                href="#tab-2"
                                >
                                <i class="fa fa-hamburger fa-2x text-primary"></i>
                                <div class="ps-3">
                                    <small class="text-body">Special</small>
                                    <h6 class="mt-n1 mb-0">Launch</h6>
                                </div>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a
                                class="d-flex align-items-center text-start mx-3 me-0 pb-3"
                                data-bs-toggle="pill"
                                href="#tab-3"
                                >
                                <i class="fa fa-utensils fa-2x text-primary"></i>
                                <div class="ps-3">
                                    <small class="text-body">Lovely</small>
                                    <h6 class="mt-n1 mb-0">Dinner</h6>
                                </div>
                            </a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="tab-1" class="tab-pane fade show p-0 active">
                            <div class="row g-4">
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img
                                            class="flex-shrink-0 img-fluid rounded"
                                            src="img/menu-1.jpg"
                                            alt=""
                                            style="width: 80px"
                                            />
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5
                                                class="d-flex justify-content-between border-bottom pb-2"
                                                >
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic"
                                                   >Ipsum ipsum clita erat amet dolor justo diam</small
                                            >
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img
                                            class="flex-shrink-0 img-fluid rounded"
                                            src="img/menu-2.jpg"
                                            alt=""
                                            style="width: 80px"
                                            />
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5
                                                class="d-flex justify-content-between border-bottom pb-2"
                                                >
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic"
                                                   >Ipsum ipsum clita erat amet dolor justo diam</small
                                            >
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img
                                            class="flex-shrink-0 img-fluid rounded"
                                            src="img/menu-3.jpg"
                                            alt=""
                                            style="width: 80px"
                                            />
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5
                                                class="d-flex justify-content-between border-bottom pb-2"
                                                >
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic"
                                                   >Ipsum ipsum clita erat amet dolor justo diam</small
                                            >
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img
                                            class="flex-shrink-0 img-fluid rounded"
                                            src="img/menu-4.jpg"
                                            alt=""
                                            style="width: 80px"
                                            />
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5
                                                class="d-flex justify-content-between border-bottom pb-2"
                                                >
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic"
                                                   >Ipsum ipsum clita erat amet dolor justo diam</small
                                            >
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img
                                            class="flex-shrink-0 img-fluid rounded"
                                            src="img/menu-5.jpg"
                                            alt=""
                                            style="width: 80px"
                                            />
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5
                                                class="d-flex justify-content-between border-bottom pb-2"
                                                >
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic"
                                                   >Ipsum ipsum clita erat amet dolor justo diam</small
                                            >
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img
                                            class="flex-shrink-0 img-fluid rounded"
                                            src="img/menu-6.jpg"
                                            alt=""
                                            style="width: 80px"
                                            />
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5
                                                class="d-flex justify-content-between border-bottom pb-2"
                                                >
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic"
                                                   >Ipsum ipsum clita erat amet dolor justo diam</small
                                            >
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img
                                            class="flex-shrink-0 img-fluid rounded"
                                            src="img/menu-7.jpg"
                                            alt=""
                                            style="width: 80px"
                                            />
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5
                                                class="d-flex justify-content-between border-bottom pb-2"
                                                >
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic"
                                                   >Ipsum ipsum clita erat amet dolor justo diam</small
                                            >
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img
                                            class="flex-shrink-0 img-fluid rounded"
                                            src="img/menu-8.jpg"
                                            alt=""
                                            style="width: 80px"
                                            />
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5
                                                class="d-flex justify-content-between border-bottom pb-2"
                                                >
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic"
                                                   >Ipsum ipsum clita erat amet dolor justo diam</small
                                            >
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab-2" class="tab-pane fade show p-0">
                            <div class="row g-4">
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img
                                            class="flex-shrink-0 img-fluid rounded"
                                            src="img/menu-1.jpg"
                                            alt=""
                                            style="width: 80px"
                                            />
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5
                                                class="d-flex justify-content-between border-bottom pb-2"
                                                >
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic"
                                                   >Ipsum ipsum clita erat amet dolor justo diam</small
                                            >
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img
                                            class="flex-shrink-0 img-fluid rounded"
                                            src="img/menu-2.jpg"
                                            alt=""
                                            style="width: 80px"
                                            />
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5
                                                class="d-flex justify-content-between border-bottom pb-2"
                                                >
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic"
                                                   >Ipsum ipsum clita erat amet dolor justo diam</small
                                            >
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img
                                            class="flex-shrink-0 img-fluid rounded"
                                            src="img/menu-3.jpg"
                                            alt=""
                                            style="width: 80px"
                                            />
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5
                                                class="d-flex justify-content-between border-bottom pb-2"
                                                >
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic"
                                                   >Ipsum ipsum clita erat amet dolor justo diam</small
                                            >
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img
                                            class="flex-shrink-0 img-fluid rounded"
                                            src="img/menu-4.jpg"
                                            alt=""
                                            style="width: 80px"
                                            />
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5
                                                class="d-flex justify-content-between border-bottom pb-2"
                                                >
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic"
                                                   >Ipsum ipsum clita erat amet dolor justo diam</small
                                            >
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img
                                            class="flex-shrink-0 img-fluid rounded"
                                            src="img/menu-5.jpg"
                                            alt=""
                                            style="width: 80px"
                                            />
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5
                                                class="d-flex justify-content-between border-bottom pb-2"
                                                >
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic"
                                                   >Ipsum ipsum clita erat amet dolor justo diam</small
                                            >
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img
                                            class="flex-shrink-0 img-fluid rounded"
                                            src="img/menu-6.jpg"
                                            alt=""
                                            style="width: 80px"
                                            />
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5
                                                class="d-flex justify-content-between border-bottom pb-2"
                                                >
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic"
                                                   >Ipsum ipsum clita erat amet dolor justo diam</small
                                            >
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img
                                            class="flex-shrink-0 img-fluid rounded"
                                            src="img/menu-7.jpg"
                                            alt=""
                                            style="width: 80px"
                                            />
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5
                                                class="d-flex justify-content-between border-bottom pb-2"
                                                >
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic"
                                                   >Ipsum ipsum clita erat amet dolor justo diam</small
                                            >
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img
                                            class="flex-shrink-0 img-fluid rounded"
                                            src="img/menu-8.jpg"
                                            alt=""
                                            style="width: 80px"
                                            />
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5
                                                class="d-flex justify-content-between border-bottom pb-2"
                                                >
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic"
                                                   >Ipsum ipsum clita erat amet dolor justo diam</small
                                            >
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab-3" class="tab-pane fade show p-0">
                            <div class="row g-4">
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img
                                            class="flex-shrink-0 img-fluid rounded"
                                            src="img/menu-1.jpg"
                                            alt=""
                                            style="width: 80px"
                                            />
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5
                                                class="d-flex justify-content-between border-bottom pb-2"
                                                >
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic"
                                                   >Ipsum ipsum clita erat amet dolor justo diam</small
                                            >
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img
                                            class="flex-shrink-0 img-fluid rounded"
                                            src="img/menu-2.jpg"
                                            alt=""
                                            style="width: 80px"
                                            />
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5
                                                class="d-flex justify-content-between border-bottom pb-2"
                                                >
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic"
                                                   >Ipsum ipsum clita erat amet dolor justo diam</small
                                            >
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img
                                            class="flex-shrink-0 img-fluid rounded"
                                            src="img/menu-3.jpg"
                                            alt=""
                                            style="width: 80px"
                                            />
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5
                                                class="d-flex justify-content-between border-bottom pb-2"
                                                >
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic"
                                                   >Ipsum ipsum clita erat amet dolor justo diam</small
                                            >
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img
                                            class="flex-shrink-0 img-fluid rounded"
                                            src="img/menu-4.jpg"
                                            alt=""
                                            style="width: 80px"
                                            />
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5
                                                class="d-flex justify-content-between border-bottom pb-2"
                                                >
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic"
                                                   >Ipsum ipsum clita erat amet dolor justo diam</small
                                            >
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img
                                            class="flex-shrink-0 img-fluid rounded"
                                            src="img/menu-5.jpg"
                                            alt=""
                                            style="width: 80px"
                                            />
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5
                                                class="d-flex justify-content-between border-bottom pb-2"
                                                >
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic"
                                                   >Ipsum ipsum clita erat amet dolor justo diam</small
                                            >
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img
                                            class="flex-shrink-0 img-fluid rounded"
                                            src="img/menu-6.jpg"
                                            alt=""
                                            style="width: 80px"
                                            />
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5
                                                class="d-flex justify-content-between border-bottom pb-2"
                                                >
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic"
                                                   >Ipsum ipsum clita erat amet dolor justo diam</small
                                            >
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img
                                            class="flex-shrink-0 img-fluid rounded"
                                            src="img/menu-7.jpg"
                                            alt=""
                                            style="width: 80px"
                                            />
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5
                                                class="d-flex justify-content-between border-bottom pb-2"
                                                >
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic"
                                                   >Ipsum ipsum clita erat amet dolor justo diam</small
                                            >
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img
                                            class="flex-shrink-0 img-fluid rounded"
                                            src="img/menu-8.jpg"
                                            alt=""
                                            style="width: 80px"
                                            />
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5
                                                class="d-flex justify-content-between border-bottom pb-2"
                                                >
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic"
                                                   >Ipsum ipsum clita erat amet dolor justo diam</small
                                            >
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> --%>
        <!-- Menu End -->

        <!-- Reservation Start -->
        <div class="container-xxl py-5 px-0 wow fadeInUp" data-wow-delay="0.1s">
            <div class="row g-0">
                <div class="col-md-6">
                    <div class="video">
                        <button
                            type="button"
                            class="btn-play"
                            data-bs-toggle="modal"
                            data-src="https://www.youtube.com/embed/DWRcNpR6Kdc"
                            data-bs-target="#videoModal"
                            >
                            <span></span>
                        </button>
                    </div>
                </div>
                <div class="col-md-6 bg-dark d-flex align-items-center">
                    <div class="p-5 wow fadeInUp" data-wow-delay="0.2s">
                        <h5
                            class="section-title ff-secondary text-start text-primary fw-normal"
                            >
                            Reservation
                        </h5>
                        <h1 class="text-white mb-4">Book A Table Online</h1>
                        <form>
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <input
                                            type="text"
                                            class="form-control"
                                            id="name"
                                            placeholder="Your Name"
                                            />
                                        <label for="name">Your Name</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <input
                                            type="email"
                                            class="form-control"
                                            id="email"
                                            placeholder="Your Email"
                                            />
                                        <label for="email">Your Email</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div
                                        class="form-floating date"
                                        id="date3"
                                        data-target-input="nearest"
                                        >
                                        <input
                                            type="text"
                                            class="form-control datetimepicker-input"
                                            id="datetime"
                                            placeholder="Date & Time"
                                            data-target="#date3"
                                            data-toggle="datetimepicker"
                                            />
                                        <label for="datetime">Date & Time</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <select class="form-select" id="select1">
                                            <option value="1">People 1</option>
                                            <option value="2">People 2</option>
                                            <option value="3">People 3</option>
                                        </select>
                                        <label for="select1">No Of People</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <textarea
                                            class="form-control"
                                            placeholder="Special Request"
                                            id="message"
                                            style="height: 100px"
                                            ></textarea>
                                        <label for="message">Special Request</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <button class="btn btn-primary w-100 py-3" type="submit">
                                        Book Now
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <div
            class="modal fade"
            id="videoModal"
            tabindex="-1"
            aria-labelledby="exampleModalLabel"
            aria-hidden="true"
            >
            <div class="modal-dialog">
                <div class="modal-content rounded-0">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Youtube Video</h5>
                        <button
                            type="button"
                            class="btn-close"
                            data-bs-dismiss="modal"
                            aria-label="Close"
                            ></button>
                    </div>
                    <div class="modal-body">
                        <!-- 16:9 aspect ratio -->
                        <div class="ratio ratio-16x9">
                            <iframe
                                class="embed-responsive-item"
                                src=""
                                id="video"
                                allowfullscreen
                                allowscriptaccess="always"
                                allow="autoplay"
                                ></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Reservation Start -->

        <!-- Team Start -->
        <div class="container-xxl pt-5 pb-3">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h5
                        class="section-title ff-secondary text-center text-primary fw-normal"
                        >
                        Team Members
                    </h5>
                    <h1 class="mb-5">Our Master Chefs</h1>
                </div>
                <div class="row g-4">
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="team-item text-center rounded overflow-hidden">
                            <div class="rounded-circle overflow-hidden m-4">
                                <img class="img-fluid" src="img/team-1.jpg" alt="" />
                            </div>
                            <h5 class="mb-0">Full Name</h5>
                            <small>Designation</small>
                            <div class="d-flex justify-content-center mt-3">
                                <a class="btn btn-square btn-primary mx-1" href=""
                                   ><i class="fab fa-facebook-f"></i
                                    ></a>
                                <a class="btn btn-square btn-primary mx-1" href=""
                                   ><i class="fab fa-twitter"></i
                                    ></a>
                                <a class="btn btn-square btn-primary mx-1" href=""
                                   ><i class="fab fa-instagram"></i
                                    ></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="team-item text-center rounded overflow-hidden">
                            <div class="rounded-circle overflow-hidden m-4">
                                <img class="img-fluid" src="img/team-2.jpg" alt="" />
                            </div>
                            <h5 class="mb-0">Full Name</h5>
                            <small>Designation</small>
                            <div class="d-flex justify-content-center mt-3">
                                <a class="btn btn-square btn-primary mx-1" href=""
                                   ><i class="fab fa-facebook-f"></i
                                    ></a>
                                <a class="btn btn-square btn-primary mx-1" href=""
                                   ><i class="fab fa-twitter"></i
                                    ></a>
                                <a class="btn btn-square btn-primary mx-1" href=""
                                   ><i class="fab fa-instagram"></i
                                    ></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="team-item text-center rounded overflow-hidden">
                            <div class="rounded-circle overflow-hidden m-4">
                                <img class="img-fluid" src="img/team-3.jpg" alt="" />
                            </div>
                            <h5 class="mb-0">Full Name</h5>
                            <small>Designation</small>
                            <div class="d-flex justify-content-center mt-3">
                                <a class="btn btn-square btn-primary mx-1" href=""
                                   ><i class="fab fa-facebook-f"></i
                                    ></a>
                                <a class="btn btn-square btn-primary mx-1" href=""
                                   ><i class="fab fa-twitter"></i
                                    ></a>
                                <a class="btn btn-square btn-primary mx-1" href=""
                                   ><i class="fab fa-instagram"></i
                                    ></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                        <div class="team-item text-center rounded overflow-hidden">
                            <div class="rounded-circle overflow-hidden m-4">
                                <img class="img-fluid" src="img/team-4.jpg" alt="" />
                            </div>
                            <h5 class="mb-0">Full Name</h5>
                            <small>Designation</small>
                            <div class="d-flex justify-content-center mt-3">
                                <a class="btn btn-square btn-primary mx-1" href=""
                                   ><i class="fab fa-facebook-f"></i
                                    ></a>
                                <a class="btn btn-square btn-primary mx-1" href=""
                                   ><i class="fab fa-twitter"></i
                                    ></a>
                                <a class="btn btn-square btn-primary mx-1" href=""
                                   ><i class="fab fa-instagram"></i
                                    ></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                        <div class="team-item text-center rounded overflow-hidden">
                            <div class="rounded-circle overflow-hidden m-4">
                                <img class="img-fluid" src="img/team-4.jpg" alt="" />
                            </div>
                            <h5 class="mb-0">Full Name</h5>
                            <small>Designation</small>
                            <div class="d-flex justify-content-center mt-3">
                                <a class="btn btn-square btn-primary mx-1" href=""
                                   ><i class="fab fa-facebook-f"></i
                                    ></a>
                                <a class="btn btn-square btn-primary mx-1" href=""
                                   ><i class="fab fa-twitter"></i
                                    ></a>
                                <a class="btn btn-square btn-primary mx-1" href=""
                                   ><i class="fab fa-instagram"></i
                                    ></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Team End -->

        <!-- Testimonial Start -->
        <%-- <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
            <div class="container">
                <div class="text-center">
                    <h5
                        class="section-title ff-secondary text-center text-primary fw-normal"
                        >
                        Testimonial
                    </h5>
                    <h1 class="mb-5">Our Clients Say!!!</h1>
                </div>
                <div class="owl-carousel testimonial-carousel">
                    <div class="testimonial-item bg-transparent border rounded p-4">
                        <i class="fa fa-quote-left fa-2x text-primary mb-3"></i>
                        <p>
                            Dolor et eos labore, stet justo sed est sed. Diam sed sed dolor
                            stet amet eirmod eos labore diam
                        </p>
                        <div class="d-flex align-items-center">
                            <img
                                class="img-fluid flex-shrink-0 rounded-circle"
                                src="img/testimonial-1.jpg"
                                style="width: 50px; height: 50px"
                                />
                            <div class="ps-3">
                                <h5 class="mb-1">Client Name</h5>
                                <small>Profession</small>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-item bg-transparent border rounded p-4">
                        <i class="fa fa-quote-left fa-2x text-primary mb-3"></i>
                        <p>
                            Dolor et eos labore, stet justo sed est sed. Diam sed sed dolor
                            stet amet eirmod eos labore diam
                        </p>
                        <div class="d-flex align-items-center">
                            <img
                                class="img-fluid flex-shrink-0 rounded-circle"
                                src="img/testimonial-2.jpg"
                                style="width: 50px; height: 50px"
                                />
                            <div class="ps-3">
                                <h5 class="mb-1">Client Name</h5>
                                <small>Profession</small>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-item bg-transparent border rounded p-4">
                        <i class="fa fa-quote-left fa-2x text-primary mb-3"></i>
                        <p>
                            Dolor et eos labore, stet justo sed est sed. Diam sed sed dolor
                            stet amet eirmod eos labore diam
                        </p>
                        <div class="d-flex align-items-center">
                            <img
                                class="img-fluid flex-shrink-0 rounded-circle"
                                src="img/testimonial-3.jpg"
                                style="width: 50px; height: 50px"
                                />
                            <div class="ps-3">
                                <h5 class="mb-1">Client Name</h5>
                                <small>Profession</small>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-item bg-transparent border rounded p-4">
                        <i class="fa fa-quote-left fa-2x text-primary mb-3"></i>
                        <p>
                            Dolor et eos labore, stet justo sed est sed. Diam sed sed dolor
                            stet amet eirmod eos labore diam
                        </p>
                        <div class="d-flex align-items-center">
                            <img
                                class="img-fluid flex-shrink-0 rounded-circle"
                                src="img/testimonial-4.jpg"
                                style="width: 50px; height: 50px"
                                />
                            <div class="ps-3">
                                <h5 class="mb-1">Client Name</h5>
                                <small>Profession</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> --%>
        <!-- Testimonial End -->

        <!-- Footer Start -->
        <div
            class="container-fluid bg-dark text-light footer pt-5 mt-5 wow fadeIn"
            data-wow-delay="0.1s"
            >
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-lg-3 col-md-6">
                        <h4
                            class="section-title ff-secondary text-start text-primary fw-normal mb-4"
                            >
                            Company
                        </h4>
                        <a class="btn btn-link" href="">About Us</a>
                        <a class="btn btn-link" href="">Contact Us</a>
                        <a class="btn btn-link" href="">Reservation</a>
                        <a class="btn btn-link" href="">Privacy Policy</a>
                        <a class="btn btn-link" href="">Terms & Condition</a>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h4
                            class="section-title ff-secondary text-start text-primary fw-normal mb-4"
                            >
                            Contact
                        </h4>
                        <p class="mb-2">
                            <i class="fa fa-map-marker-alt me-3"></i>123 Street, New York,
                            USA
                        </p>
                        <p class="mb-2">
                            <i class="fa fa-phone-alt me-3"></i>+012 345 67890
                        </p>
                        <p class="mb-2">
                            <i class="fa fa-envelope me-3"></i>info@example.com
                        </p>
                        <div class="d-flex pt-2">
                            <a class="btn btn-outline-light btn-social" href=""
                               ><i class="fab fa-twitter"></i
                                ></a>
                            <a class="btn btn-outline-light btn-social" href=""
                               ><i class="fab fa-facebook-f"></i
                                ></a>
                            <a class="btn btn-outline-light btn-social" href=""
                               ><i class="fab fa-youtube"></i
                                ></a>
                            <a class="btn btn-outline-light btn-social" href=""
                               ><i class="fab fa-linkedin-in"></i
                                ></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h4
                            class="section-title ff-secondary text-start text-primary fw-normal mb-4"
                            >
                            Opening
                        </h4>
                        <h5 class="text-light fw-normal">Monday - Saturday</h5>
                        <p>09AM - 09PM</p>
                        <h5 class="text-light fw-normal">Sunday</h5>
                        <p>10AM - 08PM</p>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h4
                            class="section-title ff-secondary text-start text-primary fw-normal mb-4"
                            >
                            Newsletter
                        </h4>
                        <p>Dolor amet sit justo amet elitr clita ipsum elitr est.</p>
                        <div class="position-relative mx-auto" style="max-width: 400px">
                            <input
                                class="form-control border-primary w-100 py-3 ps-4 pe-5"
                                type="text"
                                placeholder="Your email"
                                />
                            <button
                                type="button"
                                class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2"
                                >
                                SignUp
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="copyright">
                    <div class="row">
                        <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                            &copy; <a class="border-bottom" href="#">Your Site Name</a>, All
                            Right Reserved.

                            <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                            Designed By
                            <a class="border-bottom" href="https://htmlcodex.com"
                               >HTML Codex</a
                            ><br /><br />
                            Distributed By
                            <a
                                class="border-bottom"
                                href="https://themewagon.com"
                                target="_blank"
                                >ThemeWagon</a
                            >
                        </div>
                        <div class="col-md-6 text-center text-md-end">
                            <div class="footer-menu">
                                <a href="">Home</a>
                                <a href="">Cookies</a>
                                <a href="">Help</a>
                                <a href="">FQAs</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->

        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"
           ><i class="bi bi-arrow-up"></i
            ></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>
    <script
        src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"
    ></script>
    <script
        src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"
    ></script>
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"
    ></script>

    <script type="text/javascript">
        $(window).on('load', function () {
          if(${LoginError!=null} || ${Registersuccess!=null}){
            $('#loginModal').modal('show');
            }
          if(${RegError!=null}){
            $('#registerModal').modal('show');
            alert("${RegError}");
            }
          if(${UpdateError!=null}){
            $('#UpdateModal').modal('show');
            alert("${UpdateError}");
            }
            console.log("duc loz");
        });
    </script>
    <script name="validateLogin&Register" class="text/javascript">
            function validateLoginForm(event) {
        event.preventDefault();
        if (document.loginform.userName.value == "") {
            //alert("User Name can not be left blank");
            document.loginform.userName.focus();
            document.getElementById("LunameErr").textContent =
            "*User name can not be left blank";
            return false;
        } else if (document.loginform.password.value == "") {
            //alert("Password can not be left blank");
            document.loginform.password.focus();
            document.getElementById("LpasswordErr").textContent =
            "*Password can not be left blank";
            return false;
        } else {
            document.loginform.submit(); // fire submit event
        }
        }
                function validateRegisterForm0(event) {
        event.preventDefault(); // this will prevent the submit event.
        if (document.registerform.userName.value == "") {
            //alert("User Name can not be left blank");
            document.registerform.userName.focus();
            document.getElementById("unameErr").textContent =
            "*User name can not be left blank";
            return false;
        } else if (document.registerform.password.value == "") {
            //alert("Password can not be left blank");
            document.registerform.password.focus();
            document.getElementById("passwordErr").textContent =
            "*Password can not be left blank";
            return false;
        } else if (document.registerform.email.value == "") {
            //alert("Email can not be left blank");
            document.registerform.email.focus();
            document.getElementById("emailErr").textContent =
            "*Email can not be left blank";
            return false;
        } else if (document.registerform.phone.value == "") {
            //alert("Phone can not be left blank");
            document.registerform.phone.focus();
            document.getElementById("phoneErr").textContent =
            "*Phone can not be left blank";
            return false;
        } else if (document.registerform.name.value == "") {
            //alert("Name can not be left blank");
            document.registerform.name.focus();
            document.getElementById("nameErr").textContent =
            "*Name can not be left blank";
            return false;
        } else {
            document.registerform.submit(); // fire submit event
        }
        }
        function validateUpdateForm(event) {
            event.preventDefault(); // this will prevent the submit event.
        if (document.updateform.userName.value == "") {
            //alert("User Name can not be left blank");
            document.updateform.userName.focus();
            document.getElementById("unameErr").textContent =
            "*User name can not be left blank";
            return false;
        } else if (document.updateform.password.value == "") {
            //alert("Password can not be left blank");
            document.updateform.password.focus();
            document.getElementById("passwordErr").textContent =
            "*Password can not be left blank";
            return false;
        } else if (document.updateform.email.value == "") {
            //alert("Email can not be left blank");
            document.updateform.email.focus();
            document.getElementById("emailErr").textContent =
            "*Email can not be left blank";
            return false;
        } else if (document.updateform.phone.value == "") {
            //alert("Phone can not be left blank");
            document.updateform.phone.focus();
            document.getElementById("phoneErr").textContent =
            "*Phone can not be left blank";
            return false;
        } else if (document.updateform.name.value == "") {
            //alert("Name can not be left blank");
            document.updateform.name.focus();
            document.getElementById("nameErr").textContent =
            "*Name can not be left blank";
            return false;
        }else if (document.updateform.RePassword.value == "") {
            document.updateform.RePassword.focus();
            document.getElementById("RePasswordErr").textContent =
            "*this fields can not be left blank";
            return false;
        }
         else {
            document.updateform.submit(); // fire submit event
        }
        }
    </script>
    <script>
        const myModal = document.getElementById('myModal')
        const myInput = document.getElementById('myInput')

        myModal.addEventListener('shown.bs.modal', () => {
            myInput.focus()
        })
    </script>
    <script>
        $(document).ready(function () {
            $('#table_id').DataTable();
        });
        $(document).ready(function () {
            $('#table_id1').DataTable();
        });
    </script>
    <!-- Template Javascript -->
    <script src="js/main.js"></script>

    <!--Datatable jquery-->
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>

    <!--Delete Reservation-->
    <script>
        $(document).ready(function () {
            // Dùng event click button có id là remove
            $('#remove').click(function ()
            {

                // khi click thì sẽ lấy text của các id rid và tid
                // rid là reservation ID - tid là table ID
                var rid = $("#rid").text();
                var tid = $("#tid").text();

                $.ajax({
                    url: 'CancelBill', //đường dẫn của cái servlet hủy bill
                    type: 'GET',
                    data: {
                        // truyền 2 giá trị qua url xử lý hủy đơn và cập nhật trạng thái của bàn
                        "rid": rid,
                        "tid": tid
                    },
                    error: function ()
                    {
                        console.log("error");
                    },
                    success: function (data) //đoạn này ko dùng thì có thể để yên
                    {

                    }
                });
                $("#clear").remove();
            });
        });
    </script>
    <!-- Template Javascript -->
    <script src="js/main.js"></script>



