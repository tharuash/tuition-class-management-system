<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tuition Class Management System</title>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body>
    <nav class="navbar navbar-light bg-primary">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Logo Here</a>
        </div>
    </nav>
    <c:if test="${error!=null}">
        <div class="alert-cs alert-cs-danger">
          <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
         <c:out value="${error}"></c:out>
        </div>
<c:if test="${success!=null}">
        <div class="alert-cs alert-cs-success">
                       <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
                      <c:out value="${success}"></c:out>
                     </div>
                 </c:if>
    </c:if>
    <div class="global-container">
        <div class="card login-form">
            <div class="card-body">
                <h3 class="card-title text-center">Login</h3>
                <div class="card-text">
                    <form action="${pageContext.request.contextPath}/login" method="post">
                        <div class="form-group">
                            <input type="email" class="form-control form-control-sm" placeholder="Email" name="email">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control form-control-sm" placeholder="Password" name="password">
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Login</button>

                        <div class="sign-up">
                            Not A Member? <a href="${pageContext.request.contextPath}/register">Register Now</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>



</body>

</html>