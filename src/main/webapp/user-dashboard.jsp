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

    <title>Car - Rental </title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="css/custom.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
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
            <div class="right_col" role="main">


                <div class="row">
                    <div class="col-md-12 col-sm-12 ">
                        <form action="${pageContext.request.contextPath}/user" method="post">
                            <div class="row">
                                <div class="formbg">
                                    <div class="col-md-3"><input type="date" placeholder="from" name="from" required></div>
                                    <div class="col-md-3"><input type="date" placeholder="to" name="to" required></div>
                                    <div class="col-md-3"><input type="number" placeholder="capacity" name="capacity" required></div>
                                    <div class="col-md-3 px-5"> <button type="submit" class="btn btn-sm btn-block btn-secondary mt-1">Search</button></div>
                                </div>
                            </div>
                        </form>
                        <br/><br/><br/>
                        <div class="row">
                            <c:forEach var="vehicle" items="${vehicles}">
                                <div class="col-lg-6">
                                    <div class="card" style="width: 28rem;">
                                        <img src="<c:out value="${vehicle.image}"/>" class="card-img-top" alt="...">
                                        <div class="card-body">
                                            <p class="card-text">
                                                <div class="col-lg-4"><c:out value="${vehicle.name}"/></div>
                                                <div class="col-lg-4"><c:out value="${vehicle.price}"/> LKR/DAY</div>
                                                <div class="col-lg-4"><c:out value="${vehicle.capacity}"/> max</div>
                                            </p>
                                            <br/>
                                            <button type="button" class="btn btn-primary mx-auto" onclick="loadBookingModal(<c:out value="${vehicle.id}"/>)">Book Now</button>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>

                </div>
                <br />

                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" style="max-width: 700px">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel" style="text-align: center;">Vehicle Details</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="col-lg-4"><span>Name</span></div>
                                        <div class="col-lg-8"><span id="vehicleName"></span></div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="col-lg-4"><span>Per Day Price</span></div>
                                        <div class="col-lg-8"><span id="price"></span></div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6">
                                       <div class="col-lg-4"><span>Registered No</span></div>
                                       <div class="col-lg-8"><span id="regNo"></span></div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="col-lg-4"><span>Specifications</span></div>
                                        <div class="col-lg-8"><span id="specs"></span></div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6">
                                       <div class="col-lg-4"><span>Capacity</span></div>
                                       <div class="col-lg-8"><span id="capacity"></span></div>
                                    </div>
                                </div>
                                <form  action="${pageContext.request.contextPath}/add-booking" method="post">
                                <input type="hidden" id="vehicleId" value="0" name="vehicleId"/>
                                <h5 style="text-align: center;">Booking Details</h5>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="col-lg-4"><span>From</span></div>
                                        <div class="col-lg-8"><input type="date" placeholder="from" name="bookedFrom" onchange="handleDateInput(event, 1)" id="bookedFrom" required></div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="col-lg-4"><span>To</span></div>
                                        <div class="col-lg-8"><input type="date" placeholder="to" name="bookedTo" onchange="handleDateInput(event, 2)" id="bookedTo" required></div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="col-lg-4"><span>Email</span></div>
                                        <div class="col-lg-8"><span id="email"></span></div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="col-lg-4"><span>Total Price</span></div>
                                        <div class="col-lg-8"><span id="totalPrice"></span></div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="col-lg-4"><span>Mobile</span></div>
                                        <div class="col-lg-8"><span id="mobile"></span></div>
                                    </div>
                                </div>
                                <br/><br/>
                                <div class="row">
                                    <button type="submit" class="btn btn-primary btn-block" style="width: 150px; margin: 0 auto;">Book Now!</button>
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
        var today = new Date()
        var startDate;
        var endDate;

        function loadBookingModal(id){
            let userId = <c:out value='${sessionScope.id}'/>

            $.ajax({
            	url : "http://localhost:8081/car-rental-system/details?vehicleId=" + id + "&userId=<c:out value='${sessionScope.id}'/>",
            		type : 'GET',
            		dataType : 'json',
            		success : function(res) {
            			console.log(res);
            			document.getElementById("vehicleName").textContent = res.vehicle.name
            			document.getElementById("price").textContent = "LKR " + res.vehicle.price
            			document.getElementById("regNo").textContent = res.vehicle.registrationNumber
            			document.getElementById("specs").textContent = res.vehicle.specifications
            			document.getElementById("capacity").textContent = res.vehicle.capacity + " persons"
            			document.getElementById("email").textContent = res.email
            			document.getElementById("mobile").textContent = res.mobile
            			document.getElementById("vehicleId").value = id

            			$('#exampleModal').modal('show');

            		},
            		failure : function(err) {
            		    console.log(err)
            		}
            });
        }

        function handleDateInput(event, type) {
            let date = new Date(event.target.value)

            if (type == 1) {
                if (date >= today) {
                    startDate = date;

                    if (endDate && endDate > startDate) {
                        document.getElementById("totalPrice").textContent = "LKR " +
                            parseInt(document.getElementById("price").textContent.split(" ")[1]) * ((endDate - startDate) / (1000 * 60 * 60 * 24) + 1)
                    }
               } else {
                    document.getElementById("bookedFrom").value = ""
                    alert("Date error")
               }
            }

            if (type == 2) {
                if (date >= today && date > startDate) {
                    endDate = date;

                    if (startDate && startDate < endDate) {
                        document.getElementById("totalPrice").textContent = "LKR " +
                            parseInt(document.getElementById("price").textContent.split(" ")[1]) * ((endDate - startDate) / (1000 * 60 * 60 * 24) + 1)
                    } else {}
                } else {
                   document.getElementById("bookedTo").value = ""
                   alert("Date error")
                }
            }
        }
    </script>
</body>

</html>