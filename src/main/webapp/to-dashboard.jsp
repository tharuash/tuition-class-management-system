<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>7</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="css/custom.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    <style>
        .form-btn {
            margin-left: 20px;
            margin-top: 10px;
        }

        .inline-form {
            margin-top : 0px;
            padding-top : 0px;
        }
    </style>
</head>

<body class="nav-md">
    <div class="container body">
        <div class="main_container">
            <div class="col-md-3 left_col">
                <div class="left_col scroll-view">
                    <div class="navbar nav_title" style="border: 0;">
                        Logo
                    </div>

                    <div class="clearfix"></div>


                    <br />

                    <!-- sidebar menu -->
                    <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                        <div class="menu_section">
                            <ul class="nav side-menu">
                                <li><a href="${pageContext.request.contextPath}/to"><i class="fa fa-home"></i> Pending Bookings</a></li>
                            </ul>
                        </div>

                        <div class="sidebar-footer hidden-small">

                        </div>



                    </div>
                    <!-- /sidebar menu -->


                </div>
            </div>

            <!-- top navigation -->
            <div class="top_nav">
                <div class="nav_menu">
                    <div class="nav toggle">
                        <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                    </div>
                    <nav class="nav navbar-nav">
                        <ul class=" navbar-right">
                            <li class="nav-item dropdown open" style="padding-left: 15px;">
                                <a href="javascript:;" class="user-profile dropdown-toggle" aria-haspopup="true" id="navbarDropdown" data-toggle="dropdown" aria-expanded="false">
                                    <img src="img/user_icon.png" alt="">
                                </a>
                                <div class="dropdown-menu dropdown-usermenu pull-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="${pageContext.request.contextPath}/edit-profile?"> Edit Profile</a>
                                    <a class="dropdown-item" href="${pageContext.request.contextPath}/logout"><i class="fa fa-sign-out pull-right"></i> Log Out</a>
                                </div>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
            <!-- /top navigation -->

            <!-- page content -->
			<c:if test="${error!=null}">
                    <div class="alert-cs alert-cs-danger">
                      <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
                     <c:out value="${error}"></c:out>
                    </div>
                </c:if>
			<c:if test="${success!=null}">
                    <div class="alert-cs alert-cs-success">
                      <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
                     <c:out value="${success}"></c:out>
                    </div>
                </c:if>
            <div class="right_col" role="main">
                <!--div class="row">
                    <div class="col-lg-6">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search">
                            <div class="input-group-btn">
                                <button class="btn btn-default" type="submit">
                                <i class="glyphicon glyphicon-search"></i>
                              </button>
                            </div>
                        </div>
                    </div>

                </div-->
                <table class="booking_table">
                    <thead>
                        <th>Booking ID</th>
                        <th>Booking Period</th>
                        <th>Vehicle No</th>
                        <th>Price</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </thead>
                    <tbody>
                        <c:forEach var="booking" items="${bookings}">
                        <tr>
                            <td><c:out value="${booking.bookingId}"/></td>
                            <td><c:out value="${booking.bookedFrom}"/> - <c:out value="${booking.bookedTo}"/></td>
                            <td><c:out value="${booking.regNo}"/></td>
                            <td>LKR <c:out value="${booking.price}"/></td>
                            <td><c:out value="${booking.state}"/></td>
                            <td>
                                <div class="row">

                                <form class="inline-form" action="${pageContext.request.contextPath}/approve-booking" method="post">
                                    <input type="hidden" value="<c:out value="${booking.bookingId}"/>" name="bookingId"/>
                                   <button type="submit" class="btn btn-primary form-btn" >APPROVE</button>
                                </form>
                                 <form class="inline-form" action="${pageContext.request.contextPath}/reject-booking" method="post">
                                    <input type="hidden" value="<c:out value="${booking.bookingId}"/>" name="bookingId"/>
                                   <button class="btn btn-danger form-btn">REJECT</button>
                                 </form>
                                 </div>
                            </td>
                        </tr>
						</c:forEach>

                    </tbody>
                </table>







            </div>


        </div>

        <!-- /page content -->


    </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <!-- jQuery -->
    <script src="js/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="js/bootstrap.bundle.min.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="js/custom.min.js"></script>
</body>

</html>