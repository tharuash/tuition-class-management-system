<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>STuition Class Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body class="d-flex flex-column min-vh-100">

 <header class="bg-dark text-white text-center py-4">
     <h1>Welcome to the Tuition Class Management System</h1>
     <p>Your one-stop solution for managing student data efficiently</p>
 </header>

 <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
     <div class="container-fluid">
         <a class="navbar-brand" href="#">SMS</a>
         <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
             <span class="navbar-toggler-icon"></span>
         </button>
         <div class="collapse navbar-collapse" id="navbarNav">
             <ul class="navbar-nav me-auto">
                 <li class="nav-item">
                     <a class="nav-link active" href="#about-us">About Us</a>
                 </li>
                 <li class="nav-item">
                     <a class="nav-link" href="#our-services">Our Services</a>
                 </li>
                 <li class="nav-item">
                     <a class="nav-link" href="#contact-us">Contact Us</a>
                 </li>
             </ul>
             <a href="${pageContext.request.contextPath}/login" class="btn btn-danger">Login</a>
         </div>
     </div>
 </nav>

 <div class="container my-5">
     <section id="about-us" class="mb-5">
         <h2 class="text-primary">About Us</h2>
         <p>Our Student Management System is designed to simplify the process of managing student records. With user-friendly features, we aim to provide educational institutions with a seamless experience.</p>
         <p>From enrollment to performance tracking, we ensure data is accessible and secure at all times.</p>
     </section>

     <section id="our-services" class="mb-5">
         <h2 class="text-primary">Our Services</h2>
         <ul>
             <li>Student enrollment and registration</li>
             <li>Attendance tracking</li>
             <li>Performance analysis</li>
             <li>Customizable reporting</li>
         </ul>
     </section>

     <section id="contact-us" class="mb-5">
         <h2 class="text-primary">Contact Us</h2>
         <p>Have questions? Feel free to reach out to us:</p>
         <p><strong>Email:</strong> support@studentms.com</p>
         <p><strong>Phone:</strong> +123-456-7890</p>
     </section>
 </div>

 <footer class="bg-dark text-white text-center py-3 mt-auto">
     <p>&copy; 2024 Student Management System. All rights reserved.</p>
 </footer>

 <!-- Bootstrap JS -->
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
 </body>
</html>