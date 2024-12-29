<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tuition Class Management System</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        html, body {
            height: 100%;
        }
        .sidebar {
            height: 100vh;
        }
        .content {
            padding: 20px;
        }
    </style>
</head>
<body class="d-flex flex-column min-vh-100">

    <!-- Header -->
    <header class="bg-dark text-white text-center py-4">
        <h1>Tuition Class Management System</h1>
        <p>Manage your student data efficiently</p>
        <div style="position: absolute; top: 0; left: 0; padding: 10px; color: white; font-size: 18px;">
                        Student Dashboard
        </div>
    </header>

    <!-- Main Layout -->
    <div class="d-flex flex-grow-1">
        <!-- Sidebar -->
        <nav class="sidebar bg-primary text-white p-3">
            <h5 class="text-center">Menu</h5>
            <ul class="nav flex-column">
                <li class="nav-item">
                    <a href="#" class="nav-link text-white" onclick="showSection('timetable')">Class Timetable</a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link text-white" onclick="showSection('paymentfees')">Check Class Payment</a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link text-white" onclick="showSection('checkattendance')">Check Class Attendance</a>
                </li>
            </ul>
        </nav>

        <!-- Content -->
        <main class="content flex-grow-1">
            <!-- Timetable Section -->
           <section id="timetable" style="display: none;">
                           <h2 class="text-primary">Class Timetable</h2>
                           <table class="table table-bordered">
                               <thead>
                                   <tr>
                                       <th>Day</th>
                                       <th>8:00 AM - 10:00 AM</th>
                                       <th>10:00 AM - 12:00 PM</th>
                                       <th>1:00 PM - 3:00 PM</th>
                                   </tr>
                               </thead>
                               <tbody>
                                   <tr>
                                       <td>Monday</td>
                                       <td>Math</td>
                                       <td>English</td>
                                       <td>Physics</td>
                                   </tr>
                                   <tr>
                                       <td>Tuesday</td>
                                       <td>Chemistry</td>
                                       <td>Biology</td>
                                       <td>History</td>
                                   </tr>
                                   <tr>
                                       <td>Wednesday</td>
                                       <td>Math</td>
                                       <td>Computer Science</td>
                                       <td>English</td>
                                   </tr>
                                   <tr>
                                       <td>Thursday</td>
                                       <td>Physics</td>
                                       <td>Math</td>
                                       <td>Chemistry</td>
                                   </tr>
                                   <tr>
                                       <td>Friday</td>
                                       <td>Biology</td>
                                       <td>History</td>
                                       <td>Computer Science</td>
                                   </tr>
                                   <tr>
                                      <td>Saturday</td>
                                      <td>Computer Science</td>
                                      <td>History</td>
                                      <td>Biology</td>
                                   </tr>
                                   <tr>
                                       <td>Sunday</td>
                                       <td>-</td>
                                       <td>-</td>
                                       <td>Chemistry</td>
                                   </tr>
                               </tbody>
                           </table>
                       </section>

            <!-- Fees Section -->
            <section id="paymentfees" style="display: none;">
                <h2 class="text-primary">Check Class Payment</h2>
                <!-- 1. Input Student ID -->
                     <form action="attendanceManagement.jsp" method="post">
                     <label for="studentId">Student ID:</label>
                     <input type="text" id="studentId" name="studentId" value="<%= request.getParameter("studentId") == null ? "" : request.getParameter("studentId") %>" required>
                     </form> <br>

                <!-- Select Class with Dropdown Menu -->
                     <label for="classSelect">Select Class:</label>
                     <select name="class" id="classSelect">
                     <option value="">-- Select Class --</option>
                     <option value="Class 1">Chemistry</option>
                     <option value="Class 2">Math</option>
                     <option value="Class 3">History</option>
                     <option value="Class 3">Biology</option>
                     <option value="Class 3">Computer Science</option>
                     <option value="Class 3">Physics</option>
                     <option value="Class 3">English</option>
                     </select> <br><br>

                         <!-- Text -->
                         <p>Click here to Check Class Payment Details:</p>

                         <!-- Button -->
                         <form action="nextPage.jsp" method="get">
                             <button type="submit">Check</button>
                         </form>


            </section>

            <!-- Attendance Section -->
            <section id="checkattendance" style="display: none;">
                <h2 class="text-primary">Check Class Attendance</h2>

  <!-- 1. Input Student ID -->
                     <form action="attendanceManagement.jsp" method="post">
                     <label for="studentId">Student ID:</label>
                     <input type="text" id="studentId" name="studentId" value="<%= request.getParameter("studentId") == null ? "" : request.getParameter("studentId") %>" required>
                     </form> <br>

                <!-- Select Class with Dropdown Menu -->
                     <label for="classSelect">Select Class:</label>
                     <select name="class" id="classSelect">
                     <option value="">-- Select Class --</option>
                     <option value="Class 1">Chemistry</option>
                     <option value="Class 2">Math</option>
                     <option value="Class 3">History</option>
                     <option value="Class 3">Biology</option>
                     <option value="Class 3">Computer Science</option>
                     <option value="Class 3">Physics</option>
                     <option value="Class 3">English</option>
                     </select> <br><br>

                         <!-- Text -->
                         <p>Click here to Check Class Attendance:</p>

                         <!-- Button -->
                         <form action="nextPage.jsp" method="get">
                             <button type="submit">Check</button>
                         </form>

            </section>
        </main>
    </div>

    <!-- Footer -->
    <footer class="bg-dark text-white text-center py-3 mt-auto">
        <p>&copy; 2024 Student Management System. All rights reserved.</p>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        function showSection(sectionId) {
            const sections = document.querySelectorAll('main section');
            sections.forEach(section => {
                section.style.display = section.id === sectionId ? 'block' : 'none';
            });
        }
        // Show Timetable section by default on page load
        document.addEventListener("DOMContentLoaded", () => {
            showSection('timetable');
        });
    </script>
</body>
</html>
