<%-- 
    Document   : navbar
    Created on : Oct 5, 2022, 2:20:45 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-expand navbar-light navbar-bg">
                    <a class="sidebar-toggle js-sidebar-toggle">
                        <i class="hamburger align-self-center"></i>
                    </a>

                    <div class="navbar-collapse collapse">
                        <ul class="navbar-nav navbar-align">
                            <li class="nav-item dropdown">
                                <a class="nav-icon dropdown-toggle" href="#" id="alertsDropdown" data-bs-toggle="dropdown">
                                    <div class="position-relative">
                                        <i class="align-middle" data-feather="bell"></i>
                                        <span class="indicator">4</span>
                                    </div>
                                </a>
                                <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end py-0" aria-labelledby="alertsDropdown">
                                    <div class="dropdown-menu-header">
                                        4 New Notifications
                                    </div>
                                    <div class="list-group">
                                        <a href="#" class="list-group-item">
                                            <div class="row g-0 align-items-center">
                                                <div class="col-2">
                                                    <i class="text-danger" data-feather="alert-circle"></i>
                                                </div>
                                                <div class="col-10">
                                                    <div class="text-dark">Update completed</div>
                                                    <div class="text-muted small mt-1">Restart server 12 to complete the update.</div>
                                                    <div class="text-muted small mt-1">30m ago</div>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="list-group-item">
                                            <div class="row g-0 align-items-center">
                                                <div class="col-2">
                                                    <i class="text-warning" data-feather="bell"></i>
                                                </div>
                                                <div class="col-10">
                                                    <div class="text-dark">Lorem ipsum</div>
                                                    <div class="text-muted small mt-1">Aliquam ex eros, imperdiet vulputate hendrerit et.</div>
                                                    <div class="text-muted small mt-1">2h ago</div>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="list-group-item">
                                            <div class="row g-0 align-items-center">
                                                <div class="col-2">
                                                    <i class="text-primary" data-feather="home"></i>
                                                </div>
                                                <div class="col-10">
                                                    <div class="text-dark">Login from 192.186.1.8</div>
                                                    <div class="text-muted small mt-1">5h ago</div>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="list-group-item">
                                            <div class="row g-0 align-items-center">
                                                <div class="col-2">
                                                    <i class="text-success" data-feather="user-plus"></i>
                                                </div>
                                                <div class="col-10">
                                                    <div class="text-dark">New connection</div>
                                                    <div class="text-muted small mt-1">Christina accepted your request.</div>
                                                    <div class="text-muted small mt-1">14h ago</div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="dropdown-menu-footer">
                                        <a href="#" class="text-muted">Show all notifications</a>
                                    </div>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-icon dropdown-toggle" href="#" id="messagesDropdown" data-bs-toggle="dropdown">
                                    <div class="position-relative">
                                        <i class="align-middle" data-feather="message-square"></i>
                                    </div>
                                </a>
                                <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end py-0" aria-labelledby="messagesDropdown">
                                    <div class="dropdown-menu-header">
                                        <div class="position-relative">
                                            4 New Messages
                                        </div>
                                    </div>
                                    <div class="list-group">
                                        <a href="#" class="list-group-item">
                                            <div class="row g-0 align-items-center">
                                                <div class="col-2">
                                                    <img src="img/avatars/avatar-5.jpg" class="avatar img-fluid rounded-circle" alt="Vanessa Tucker">
                                                </div>
                                                <div class="col-10 ps-2">
                                                    <div class="text-dark">Vanessa Tucker</div>
                                                    <div class="text-muted small mt-1">Nam pretium turpis et arcu. Duis arcu tortor.</div>
                                                    <div class="text-muted small mt-1">15m ago</div>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="list-group-item">
                                            <div class="row g-0 align-items-center">
                                                <div class="col-2">
                                                    <img src="img/avatars/avatar-2.jpg" class="avatar img-fluid rounded-circle" alt="William Harris">
                                                </div>
                                                <div class="col-10 ps-2">
                                                    <div class="text-dark">William Harris</div>
                                                    <div class="text-muted small mt-1">Curabitur ligula sapien euismod vitae.</div>
                                                    <div class="text-muted small mt-1">2h ago</div>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="list-group-item">
                                            <div class="row g-0 align-items-center">
                                                <div class="col-2">
                                                    <img src="img/avatars/avatar-4.jpg" class="avatar img-fluid rounded-circle" alt="Christina Mason">
                                                </div>
                                                <div class="col-10 ps-2">
                                                    <div class="text-dark">Christina Mason</div>
                                                    <div class="text-muted small mt-1">Pellentesque auctor neque nec urna.</div>
                                                    <div class="text-muted small mt-1">4h ago</div>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="list-group-item">
                                            <div class="row g-0 align-items-center">
                                                <div class="col-2">
                                                    <img src="img/avatars/avatar-3.jpg" class="avatar img-fluid rounded-circle" alt="Sharon Lessman">
                                                </div>
                                                <div class="col-10 ps-2">
                                                    <div class="text-dark">Sharon Lessman</div>
                                                    <div class="text-muted small mt-1">Aenean tellus metus, bibendum sed, posuere ac, mattis non.</div>
                                                    <div class="text-muted small mt-1">5h ago</div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="dropdown-menu-footer">
                                        <a href="#" class="text-muted">Show all messages</a>
                                    </div>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-icon dropdown-toggle d-inline-block d-sm-none" href="#" data-bs-toggle="dropdown">
                                    <i class="align-middle" data-feather="settings"></i>
                                </a>

                                <a class="nav-link dropdown-toggle d-none d-sm-inline-block" href="#" data-bs-toggle="dropdown">
                                    <img src="${request.contextPath}/SWP_Project/AdminPage/img/avatars/adminava.jpg" class="avatar img-fluid rounded me-1"/> <span class="text-dark">${userLogin}</span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-end">
                                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#UpdateModal"><i class="align-middle me-1" data-feather="user"></i> Profile</a>
                                    <a class="dropdown-item" href="${request.contextPath}/SWP_Project/LoginServlet">Log out</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
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
                                            placeholder=${loggedAccount.name}
                                            value=${loggedAccount.name}
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
    </body>
    <script>
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
</html>
