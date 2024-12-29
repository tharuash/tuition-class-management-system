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
                Admin Dashboard
            </div>
    </header>

    <!-- Main Layout -->
    <div class="d-flex flex-grow-1">
        <!-- Sidebar -->
        <nav class="sidebar bg-primary text-white p-3">
            <h5 class="text-center">Menu</h5>
            <ul class="nav flex-column">
                <li class="nav-item">
                    <a href="#" class="nav-link text-white" onclick="showSection('newstudent')">Register New Student</a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link text-white" onclick="showSection('newteacher')">Register New Teacher</a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link text-white" onclick="showSection('timetable')">Class Timetable</a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link text-white" onclick="showSection('fees')">Class Fees Payment</a>
                </li>
                 <li class="nav-item">
                    <a href="#" class="nav-link text-white" onclick="showSection('check fees')">Check Class Fees Payment</a>
                 </li>
                <li class="nav-item">
                    <a href="#" class="nav-link text-white" onclick="showSection('Mark attendance')">Mark Student Attendance</a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link text-white" onclick="showSection('View attendance')">View Student Attendance</a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link text-white" onclick="showSection('teachers payment')">Teachers Payment</a>
                </li>
                <li class="nav-item">
                   <a href="#" class="nav-link text-white" onclick="showSection('check teachers payment')">Check Teachers Payment</a>
                </li>
                 <li class="nav-item">
                     <a href="#" class="nav-link text-white" onclick="showSection('generatereport')">Generate Reports</a>
                 </li>
                 <li class="nav-item">
                    <a href="#" class="nav-link text-white" onclick="showSection('sms')">Send SMS</a>
                 </li>
            </ul>
        </nav>

        <!-- Content -->
        <main class="content flex-grow-1">

        <!-- Register new student Section -->
                 <section id="newstudent" style="display: none;">
                 <h2 class="text-primary">Register New Student</h2>
                 <form method="post" action="">
                     <label for="firstName">First Name:</label><br>
                     <input type="text" id="firstName" name="firstName" required><br><br>

                     <label for="lastName">Last Name:</label><br>
                     <input type="text" id="lastName" name="lastName" required><br><br>

                     <label for="address">Address:</label><br>
                     <textarea id="address" name="address" rows="4" cols="30" required></textarea><br><br>

                     <label for="telephone">Telephone:</label><br>
                     <input type="text" id="telephone" name="telephone" pattern="[0-9]{10}" required>
                     <small>10 digits</small><br><br>

                     <label for="email">Email:</label><br>
                     <input type="email" id="email" name="email" required><br><br>

                     <form action="ViewStudentIDServlet" method="post">
                     <button type="submit" name="viewStudentID">Submit and View Student ID</button>
                     </form>

                 </section>

        <!-- Register new teacher Section -->
                 <section id="newteacher" style="display: none;">
                      <h2 class="text-primary">Register New Teacher</h2>
                      <form method="post" action="">
                      <label for="firstName">First Name:</label><br>
                      <input type="text" id="firstName" name="firstName" required><br><br>

                      <label for="lastName">Last Name:</label><br>
                      <input type="text" id="lastName" name="lastName" required><br><br>

                      <label for="address">Address:</label><br>
                      <textarea id="address" name="address" rows="4" cols="30" required></textarea><br><br>

                      <label for="telephone">Telephone:</label><br>
                      <input type="text" id="telephone" name="telephone" pattern="[0-9]{10}" required>
                      <small>10 digits</small><br><br>

                      <label for="email">Email:</label><br>
                      <input type="email" id="email" name="email" required><br><br>

                      <!-- Select Class with Dropdown Menu -->
                      <label for="classSelect">Select Subject:</label>
                      <select name="class" id="classSelect">
                      <option value="">-- Select Subject --</option>
                      <option value="Class 1">Chemistry</option>
                      <option value="Class 2">Math</option>
                      <option value="Class 3">History</option>
                      <option value="Class 3">Biology</option>
                      <option value="Class 3">Computer Science</option>
                      <option value="Class 3">Physics</option>
                      <option value="Class 3">English</option>
                      </select> <br><br>

                      <input type="submit" value="Submit">
                      </form>
                 </section>

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

        <!-- Class Fees payment Section -->
                 <section id="fees" style="display: none;">
                 <h2 class="text-primary">Class Fees Payment</h2>

                   <form action="processPayment.jsp" method="post">
                      <!-- Student ID with Input Field -->
                      <label for="studentId">Student ID:</label>
                      <input type="text" id="studentId" name="studentId" placeholder="Enter Student ID">
                      <br><br>

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
                        </select>
                        <br><br>

                   <!-- Amount with Input Field -->
                        <label for="amount">Amount:Rs</label>
                        <input type="text" id="amount" name="amount" placeholder="Enter Amount">
                        <br><br>

                   <!-- Payment Date -->
                        <label for="paymentDate">Payment Date:</label>
                        <input type="text" id="paymentDate" name="paymentDate" placeholder="day/month/year">
                        <br><br>

                        <button type="submit">Submit</button>
                        </form>
                 </section>

        <!--check Class Fees Section -->
                 <section id="check fees" style="display: none;">
                 <h2 class="text-primary">Check Class Fees Payment</h2>


                  <!-- Student ID with Input Field -->
                    <form action="processPayment.jsp" method="post">
                    <label for="studentId">Student ID:</label>
                    <input type="text" id="studentId" name="studentId" placeholder="Enter Student ID">
                    <br><br>
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
                     </select>
                     <br><br>
                  <!-- Button to check payment details -->
                    <form action="viewAttendanceServlet" method="post">
                    <button type="submit">Check Class Fees Payment Details</button>
                    </form>
                 </section>

        <!-- Mark student Attendance Section -->
                 <section id="Mark attendance" style="display: none;">
                     <h2 class="text-primary">Mark Student Attendance</h2>


              <!-- 1. Input Student ID -->
                      <form action="attendanceManagement.jsp" method="post">
                      <label for="studentId">Student ID:</label>
                      <input type="text" id="studentId" name="studentId" value="<%= request.getParameter("studentId") == null ? "" : request.getParameter("studentId") %>" required>
                      <br><br>
                      </form>

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
                      </select>
                      <br><br>
              <!-- Select month with Dropdown Menu -->
                      <label for="MonthSelect">Select Month:</label>
                      <select name="class" id="MonthSelect">
                         <option value="">-- Select Month --</option>
                         <option value="Class 1">January</option>
                         <option value="Class 2">February</option>
                         <option value="Class 3">March</option>
                         <option value="Class 3">April</option>
                         <option value="Class 3">May</option>
                         <option value="Class 3">June</option>
                         <option value="Class 3">July</option>
                         <option value="Class 3">August</option>
                         <option value="Class 3">September</option>
                         <option value="Class 3">October</option>
                         <option value="Class 3">November</option>
                         <option value="Class 3">December</option>
                      </select>
                      <br><br>

              <!-- . mark attendance -->

                     <style>
                        .week {
                           margin-bottom: 20px;
                        }
                        .days {
                           display: flex;
                           margin-bottom: 5px;
                        }
                        .day-label {
                           width: 40px;
                           text-align: center;
                           margin-right: 5px;
                           font-weight: bold;
                        }
                          .blocks {
                           display: flex;
                        }
                           .block {
                            width: 40px;
                            height: 40px;
                            border: 1px solid black;
                            margin-right: 5px;
                            cursor: pointer;
                            background-color: white; /* Default color */
                        }
                            .block.selected {
                            background-color: red; /* Color when selected */
                        }
                            .week-label {
                             margin-bottom: 5px;
                             font-weight: bold;
                         }
                        </style>
                        <script>
                            function toggleBlockColor(block) {
                            // Toggle the "selected" class on the clicked block
                            block.classList.toggle("selected");
                         }
                        </script>
                    </head>
                    <body>

                    <div>
                      <%
                          // Days of the week
                          String[] daysOfWeek = {"Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"};
                          int totalWeeks = 4; // Number of weeks

                          for (int week = 1; week <= totalWeeks; week++) {
                      %>
                           <div class="week">
                           <div class="week-label"><%= week %> Week</div>
                           <div class="days">
                           <% for (String day : daysOfWeek) { %>
                           <div class="day-label"><%= day %></div>
                       <% } %>
                            </div>
                            <div class="blocks">
                            <% for (int block = 1; block <= daysOfWeek.length; block++) { %>
                            <div class="block" onclick="toggleBlockColor(this)"></div>
                       <% } %>
                            </div>
                            </div>
                            <% } %>
                            </div>
                        <form action="yourActionPage.jsp" method="post">
                            <button type="submit">Submit</button>
                        </form>
              </section>

        <!-- View student Attendance Section -->
                <section id="View attendance" style="display: none;">
                <h2 class="text-primary">View Student Attendance</h2>

              <!-- 1. Input Student ID -->
                   <form action="attendanceManagement.jsp" method="post">
                   <label for="studentId">Student ID:</label>
                        <input type="text" id="studentId" name="studentId" value="<%= request.getParameter("studentId") == null ? "" : request.getParameter("studentId") %>" required>
                        </form>
                        <br>


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

              <!-- Button to View Attendance -->
                    <form action="viewAttendanceServlet" method="post">
                    <button type="submit">View Attendance</button>
                    </form>
              </section>

        <!--  teachers payment Section -->
              <section id="teachers payment" style="display: none;">
              <h2 class="text-primary">Teachers Payment</h2>
              <form method="post" action="">
                      <label for="firstName">First Name:</label><br>
                      <input type="text" id="firstName" name="firstName" required><br><br>

                      <label for="lastName">Last Name:</label><br>
                      <input type="text" id="lastName" name="lastName" required><br><br>

                      <label for="email">Email:</label><br>
                      <input type="email" id="email" name="email" required><br><br>

              <!-- Select Class with Dropdown Menu -->
                      <label for="classSelect">Select Subject:</label>
                      <select name="class" id="classSelect">
                        <option value="">-- Select Subject --</option>
                        <option value="Class 1">Chemistry</option>
                        <option value="Class 2">Math</option>
                        <option value="Class 3">History</option>
                        <option value="Class 3">Biology</option>
                        <option value="Class 3">Computer Science</option>
                        <option value="Class 3">Physics</option>
                        <option value="Class 3">English</option>
                      </select> <br><br>

               <!-- Amount with Input Field -->
                      <label for="amount">Amount:Rs</label>
                      <input type="text" id="amount" name="amount" placeholder="Enter Amount">
                      <br><br>

               <!-- Payment Date -->
                      <label for="paymentDate">Payment Date:</label>
                      <input type="text" id="paymentDate" name="paymentDate" placeholder="day/month/year">
                      <br><br>

                      <input type="submit" value="Submit">
                      </form>
              </section>

       <!--  Check teachers payment details Section -->
              <section id="check teachers payment" style="display: none;">
              <h2 class="text-primary">Check Teachers Payment</h2>
                <form method="post" action="">
                      <label for="firstName">First Name:</label><br>
                      <input type="text" id="firstName" name="firstName" required><br><br>

                      <label for="lastName">Last Name:</label><br>
                      <input type="text" id="lastName" name="lastName" required><br><br>

                      <label for="email">Email:</label><br>
                      <input type="email" id="email" name="email" required><br><br>

              <!-- Select Class with Dropdown Menu -->
                      <label for="classSelect">Select Subject:</label>
                      <select name="class" id="classSelect">
                        <option value="">-- Select Subject --</option>
                        <option value="Class 1">Chemistry</option>
                        <option value="Class 2">Math</option>
                        <option value="Class 3">History</option>
                        <option value="Class 3">Biology</option>
                        <option value="Class 3">Computer Science</option>
                        <option value="Class 3">Physics</option>
                        <option value="Class 3">English</option>
                      </select> <br><br>

              <!-- Button to check teacher payment details -->
                     <form action="viewAttendanceServlet" method="post">
                     <button type="submit">Check Teachers Payment Details</button>
                     </form>
                 </section>

        <!-- Generate reports Section -->
              <section id="generatereport" style="display: none;">
              <h2 class="text-primary">Generate Reports</h2>
             <!-- 1. Input Student ID -->
                     <form action="attendanceManagement.jsp" method="post">
                     <label for="studentId">Student ID:</label>
                     <input type="text" id="studentId" name="studentId" value="<%= request.getParameter("studentId") == null ? "" : request.getParameter("studentId") %>" required>
                     </form>
                     <br>


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

             <!-- Button to Generate payment reports -->
                   <form action="viewAttendanceServlet" method="post">
                   <button type="submit">Generate Payment Reports</button>
                   </form> <br>
             <!-- Button to Generate attendance reports -->
                   <form action="viewAttendanceServlet" method="post">
                   <button type="submit">Generate Attendance Reports</button>
                   </form>

             </section>

       <!-- send sms Section -->
             <section id="sms" style="display: none;">
             <h2 class="text-primary">Send SMS</h2> <br>
                <form method="post" action="processSMS.jsp">
                <textarea id="smsText" name="smsText" placeholder="Type your SMS here..."></textarea>
                <br>
                <button type="submit">Send SMS</button>
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
