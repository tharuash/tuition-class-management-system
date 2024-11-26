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

    <title>4 </title>

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
                                 <li><a href="${pageContext.request.contextPath}/user"><i class="fa fa-home"></i> Vehicles</a></li>
                                 <li><a href="${pageContext.request.contextPath}/get-bookings"><i class="fa fa-home"></i> Bookings</a></li>
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
                                    <a class="dropdown-item" href="${pageContext.request.contextPath}/edit-profile"> Edit Profile</a>
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

                                <c:if test="${booking.state == 'APPROVED'}">
                                    <button type="button" class="btn btn-primary" style="margin-top:10px" onclick="loadPayModal(<c:out value="${booking.bookingId}"/>)">PAY</button>
                                </c:if>

								<c:if test="${booking.state != 'CANCELLED'}">
								<form class="inline-form" action="${pageContext.request.contextPath}/reject-booking" method="post">
                                    <input type="hidden" value="<c:out value="${booking.bookingId}"/>" name="bookingId"/>
                                   <button class="btn btn-danger form-btn">REJECT</button>
                                 </form>
                                 </c:if>
                                </div>
                            </td>
                        </tr>

					</c:forEach>
                    </tbody>
                </table>


                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <form action="${pageContext.request.contextPath}/add-payment" method="post">
                                    <input type="hidden" id="bookingId" value="0" name="bookingId">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <input type="email" class="form-control form-control-sm" placeholder="Card Details" readonly>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <span>Card type</span>
                                            </div>
                                        </div>
                                        <div class="col-lg-8">
                                            <div class="row">
                                                <div class="form-group">
                                                    VISA
                                                    <input type="radio" value="VISA" name="type">
                                                </div>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <div class="form-group">
                                                    MASTER
                                                    <input type="radio" value="MASTER" name="type">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <input type="text" class="form-control form-control-sm" placeholder="Card Number" name="cardNo" required>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <span>Expiration Date</span>
                                            </div>
                                        </div>
                                        <div class="col-lg-8">
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="form-group">
                                                        <input type="number" min="1" max="12" class="form-control form-control-sm" placeholder="MM" name="expMonth" required>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6">
                                                    <div class="form-group">
                                                        <input type="number" min="2021" class="form-control form-control-sm" placeholder="YYYY" name="expYear" required>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <input type="number"  min="0" max="999"  class="form-control form-control-sm" placeholder="CVV/CDD" name="cvv" required>
                                            </div>
                                        </div>
                                        <div class="col-lg-8">
                                            <button type="submit" class="btn btn-primary btn-block">PAY</button>

                                        </div>
                                    </div>
                                </form>
                            </div>

                        </div>
                    </div>
                </div>




            </div>


        </div>

        <!-- /page content -->


    </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
    <!-- jQuery -->
    <script src="js/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="js/bootstrap.bundle.min.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="js/custom.min.js"></script>

    <script>
        function loadPayModal(id){
            document.getElementById("bookingId").value = id;
            $('#exampleModal').modal('show')
        }
    </script>
</body>

</html>