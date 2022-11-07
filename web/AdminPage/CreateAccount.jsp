<%-- 
    Document   : index
    Created on : Oct 4, 2022, 8:27:15 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Responsive Admin &amp; Dashboard Template based on Bootstrap 5">
        <meta name="author" content="AdminKit">
        <meta name="keywords" content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">

        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link rel="shortcut icon" href="img/icons/icon-48x48.png" />

        <link rel="canonical" href="https://demo-basic.adminkit.io/" />

        <title>AdminKit Demo - Bootstrap 5 Admin Template</title>

        <link href="./css/app.css" rel="stylesheet">
        <link href="./css/mycss.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    </head>

    <body>
        <div class="wrapper">
            <%@include file="navigation.jsp" %>

            <div class="main">
                <%@include file="navbar.jsp" %>

                <main class="content">
                    <div class="container">
                    <div class="card-title text-center mb-5">Add Accounts</div>

                        <form name="accountform" action="${request.contextPath}/SWP_Project/EmpAccountServlet" method="post" onSubmit="return validateRegisterForm0(event);">
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
                                <div class="form-group row">
                                    <label
                                        for=""
                                        class="col-12 col-md-3 col-form-label"
                                        >Roles</label
                                    >

                                    <div class="col-12 col-md-4">
                                        <select class="form-control" id="roles" name="roles">
                                            <option value="0">Select Role</option>
                                            <option value="1">Manager</option>
                                            <option value="2">Cashier</option>
                                            <option value="4">Kitchen staff</option>
                                        </select>
                                    </div>
                                    <div class="col-12 col-md-4">
                                      <span style="color:red" id="roleErr">
                                    </div>
                                </div>

                                <div class="form-row mt-4">
                                    <div class="offset-md-4 col-md-10">
                                        <button type="submit" class="btn btn-primary btn-sm ml-1 pl-5 pr-5">
                                            Add
                                        </button>
                                    </div>
                                </div>
                                <div class="form-row mt-4">
                                    <div style="color:red" class="offset-md-4 col-md-10">
                                         ${addErr}
                                    </div>
                                </div>
                            </form>
                        
                    </div>
                </main>

                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row text-muted">
                            <div class="col-6 text-start">
                                <p class="mb-0">
                                    <a class="text-muted" href="https://adminkit.io/" target="_blank"><strong>AdminKit</strong></a> - <a class="text-muted" href="https://adminkit.io/" target="_blank"><strong>Bootstrap Admin Template</strong></a>								&copy;
                                </p>
                            </div>
                            <div class="col-6 text-end">
                                <ul class="list-inline">
                                    <li class="list-inline-item">
                                        <a class="text-muted" href="https://adminkit.io/" target="_blank">Support</a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a class="text-muted" href="https://adminkit.io/" target="_blank">Help Center</a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a class="text-muted" href="https://adminkit.io/" target="_blank">Privacy</a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a class="text-muted" href="https://adminkit.io/" target="_blank">Terms</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>

        <script src="js/app.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
    </body>
<script name="validateLogin&Register" class="text/javascript">
        function validateRegisterForm0(event) {
        event.preventDefault(); // this will prevent the submit event.
        if (document.accountform.userName.value == "") {
            //alert("User Name can not be left blank");
            document.accountform.userName.focus();
            document.getElementById("unameErr").textContent =
            "*User name can not be left blank";
            return false;
        } else if (document.accountform.password.value == "") {
            //alert("Password can not be left blank");
            document.accountform.password.focus();
            document.getElementById("passwordErr").textContent =
            "*Password can not be left blank";
            return false;
        } else if (document.accountform.email.value == "") {
            //alert("Email can not be left blank");
            document.accountform.email.focus();
            document.getElementById("emailErr").textContent =
            "*Email can not be left blank";
            return false;
        } else if (document.accountform.phone.value == "") {
            //alert("Phone can not be left blank");
            document.accountform.phone.focus();
            document.getElementById("phoneErr").textContent =
            "*Phone can not be left blank";
            return false;
        } else if (document.accountform.name.value == "") {
            //alert("Name can not be left blank");
            document.accountform.name.focus();
            document.getElementById("nameErr").textContent =
            "*Name can not be left blank";
            return false;
        }else if (document.accountform.roles.value == "0") {
            document.accountform.roles.focus();
            document.getElementById("roleErr").textContent =
            "*Please select a role";
            return false;
         }else {
            document.accountform.submit(); // fire submit event
        }
        }
    </script>
</html>
