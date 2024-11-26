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

    <title>Car Rental</title>

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
                                <li><a href="${pageContext.request.contextPath}/admin"><i class="fa fa-home"></i>Manage Vehicles</a></li>
                                <li><a href="${pageContext.request.contextPath}/add-vehicle"><i class="fa fa-home"></i>Add Vehicles</a></li>
                                <li><a href="${pageContext.request.contextPath}/add-to"><i class="fa fa-home"></i>Add Technical Officers</a></li>
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


                <div class="row">
                    <div class="col-md-12 col-sm-12 ">
                        <!--form>
                            <div class="row">
                                <div class="formbg">
                                    <div class="col-md-3"><input type="text" placeholder="from"></div>
                                    <div class="col-md-3"><input type="text" placeholder="to"></div>
                                    <div class="col-md-3"><input type="text" placeholder="capacity"></div>
                                    <div class="col-md-3 searchBtn"> <a href=""><i class="fa fa-search"></i></a></div>
                                </div>
                            </div>
                        </form-->
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
                                        <div class="row">
                                            <button type="button" class="btn btn-primary" onclick="loadVehicleDetails(<c:out value="${vehicle.id}"/>)">Update</button>
                                            <a type="button" class="btn btn-danger" href="${pageContext.request.contextPath}/delete-vehicle?vehicleId=<c:out value="${vehicle.id}"/>" >Delete</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>

                        </div>

                    </div>

                </div>
                <br />

                <!-- Modal -->
                <div class="modal fade" id="updateModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel" style="text-align: center;">Vehicle Update</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <form action="${pageContext.request.contextPath}/update-vehicle" method="post">
                                    <input type="hidden" value="0" id="vehicleId" name="vehicleId"/>
                                    <div class="form-group">
                                        <input type="text" class="form-control form-control-sm" placeholder="Name/Brand" name="name" id="name" required>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control form-control-sm" placeholder="Max Capacity" name="capacity" id="capacity" required>
                                    </div>
                                    <div class="form-group">
                                        <input type="number" class="form-control form-control-sm" placeholder="Per Day Price" name="price" id="price" required>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control form-control-sm" placeholder="Vehicle No" name="regNo" id="regNo" required>
                                    </div>
                                    <!--div class="form-group">
                                        <input type="file" class="form-control form-control-sm" placeholder="Image">
                                    </div-->
                                    <div class="form-group">
                                        <textarea  style="width: 100%;" placeholder="Specifications" name="specs" id="specs"></textarea>
                                    </div>
                                    <div class="row">
                                        <button type="submit" class="btn btn-primary btn-block" style="width: 150px; margin: 0 auto;">Update</button>
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
        function loadVehicleDetails(id) {
            $.ajax({
                url : "http://localhost:8081/car-rental-system//get-vehicle?vehicleId=" + id,
                type : 'GET',
                dataType : 'json',
                success : function(res) {
                    console.log(res)
                    document.getElementById("name").value = res.name
                    document.getElementById("price").value = res.price
                    document.getElementById("regNo").value = res.registrationNumber
                    document.getElementById("specs").value = res.specifications
                    document.getElementById("capacity").value = res.capacity
                    document.getElementById("vehicleId").value = res.id

                    $('#updateModal').modal('show');

                },
                failure : function(err) {
                    console.log(err)
                }
            });

        }
    </script>
</body>

</html>