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
    </header>

    <!-- Main Layout -->
    <div class="d-flex flex-grow-1">
        <!-- Sidebar -->
        <nav class="sidebar bg-primary text-white p-3">
            <h5 class="text-center">Menu</h5>
            <ul class="nav flex-column">
                <li class="nav-item">
                    <a href="#" class="nav-link text-white" onclick="showSection('timetable')">Timetable</a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link text-white" onclick="showSection('fees')">Fees</a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link text-white" onclick="showSection('attendance')">Attendance</a>
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
                    </tbody>
                </table>
            </section>

            <!-- Fees Section -->
            <section id="fees" style="display: none;">
                <h2 class="text-primary">Semester Fees</h2>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Semester</th>
                            <th>Total Fees</th>
                            <th>Paid</th>
                            <th>Remaining</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>$2000</td>
                            <td>$1500</td>
                            <td>$500</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>$2000</td>
                            <td>$1200</td>
                            <td>$800</td>
                        </tr>
                    </tbody>
                </table>
            </section>

            <!-- Attendance Section -->
            <section id="attendance" style="display: none;">
                <h2 class="text-primary">Attendance</h2>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Class</th>
                            <th>Attendance Percentage</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Math</td>
                            <td>85%</td>
                        </tr>
                        <tr>
                            <td>English</td>
                            <td>90%</td>
                        </tr>
                        <tr>
                            <td>Physics</td>
                            <td>80%</td>
                        </tr>
                        <tr>
                            <td>Chemistry</td>
                            <td>88%</td>
                        </tr>
                        <tr>
                            <td>Biology</td>
                            <td>92%</td>
                        </tr>
                    </tbody>
                </table>
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
