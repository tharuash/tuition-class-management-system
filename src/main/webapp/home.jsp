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
                     <a class="nav-link active" href="#our-services">Our Services</a>
                 </li>
                 <li class="nav-item">
                     <a class="nav-link active" href="#contact-us">Contact Us</a>
                 </li>
             </ul>
             <a href="${pageContext.request.contextPath}/login" class="btn btn-danger">Login</a>
         </div>
     </div>
 </nav>

 <div class="container my-5">
     <section id="about-us" class="mb-5">
         <h2 class="text-primary">About Us</h2>
         <p>Our Tuition Class Management System is meticulously crafted to streamline and enhance the management of student
         records. By offering intuitive, user-friendly features, it empowers educational institutions to deliver a seamless
         and efficient administrative experience.</p>
         <p>From student enrollment to comprehensive performance tracking, our system ensures that all data remains easily
          accessible and securely managed, providing institutions with the confidence and reliability they need to focus on
          delivering quality education..From enrollment to performance tracking, we ensure data is accessible and secure at
          all times.</p>
     </section>

     <section id="our-services" class="mb-5">
         <h2 class="text-primary">Our Services</h2>
         <ul>
             <li>Student enrollment and registration</li>
              <li>Teacher enrollment and registration</li>
               <li>Fee Payment Management</li>
             <li>Attendance tracking</li>
             <li>Performance analysis</li>
             <li>Customizable reporting</li>
         </ul>
     </section>

     <section id="contact-us" class="mb-5">
         <h2 class="text-primary">Contact Us</h2>
         <p>Have questions? Feel free to reach out to us: <br>
         <strong>Email:</strong> support@studentms.com <br>
         <strong>Phone:</strong> +94 75 611 4406<br>
         <strong>Whatsapp:</strong> +94 77 988 2623</p>
     </section>
 </div>

 <footer class="bg-dark text-white text-center py-3 mt-auto">
     <p>&copy; 2024 Tuition Class Management System. All rights reserved.</p>
 </footer>

 <!-- Bootstrap JS -->
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
 </body>
</html>