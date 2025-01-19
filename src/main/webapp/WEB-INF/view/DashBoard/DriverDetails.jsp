<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Driver Details</title>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9; /* Light grey background */
            color: #333; /* Dark grey text */
            line-height: 1.6;
            margin: 0;
        }

        /* Cover Section */
        .cover-section {
            position: relative;
            width: 80%;
            margin-left: 270px; /* Make space for the sidebar */
            margin-bottom: 10px;
        }

        /* Image Styling */
        .cover-section img {
            width: 100%;
            height: auto; /* Maintains aspect ratio */
        }

        /* Orange Banner Section */
        .banner {
            position: absolute;
            bottom: 0;
            width: 100%;
            background-color: #ff6600; /* Orange color */
            padding: 20px 0;
            text-align: center;
        }

        .banner h1 {
            font-size: 36px;
            font-weight: bold;
            color: #000; /* Black text */
        }

        /* Main Content */
        .main-content {
            max-width: 800px; /* Center content */
            margin: 40px auto;
            margin-left: 390px;
            padding: 20px;
            background-color: #fff; /* White background */
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .main-content h2 {
            text-align: center;
            font-size: 28px;
            margin-bottom: 20px;
            color: #0056b3; /* Blue heading */
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        /* Driver Details Table */
        .driver-details {
            margin-top: 20px;
        }

        .driver-details table {
            width: 100%;
            border-collapse: collapse;
            margin: 10px 0;
        }

        .driver-details table th,
        .driver-details table td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd; /* Light grey border */
        }

        .driver-details table th {
            
            color: #111111; /* White text */
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .driver-details table td {
            font-size: 16px;
            color: #555; /* Slightly darker grey for text */
        }

        /* Status Labels */
        .status {
            display: inline-block;
            padding: 6px 12px;
            border-radius: 4px;
            font-weight: bold;
            color: #fff;
        }

        .status.active {
            background-color: #4caf50; /* Green for active */
        }

        .status.inactive {
            background-color: #ff5722; /* Red for inactive */
        }

        /* Back Button */
        .back-button {
            display: inline-block;
            padding: 12px 40px;
            background-color: #0056b3;
            color: #fff;
            text-decoration: none;
            border-radius: 6px;
            font-weight: bold;
            text-align: center;
            margin-top: 20px;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .back-button:hover {
            background-color: #004494; /* Darker blue on hover */
            transform: scale(1.05); /* Slight zoom on hover */
        }
    </style>
</head>

<body>
    <!-- Include the sidebar -->
    <jsp:include page="Sidebar.jsp" />

    <!-- Cover Photo -->
    <div class="cover-section">
        <img src="/img/BookingView.jpg" alt="Booking Image">
        <div class="banner">
            <h1>YOUR JOURNEY STARTS HERE</h1>
        </div>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <h2>Driver Details</h2>

        <div class="driver-details">
            <table>
                <tr>
                    <th>ID:</th>
                    <td>${driver.id}</td>
                </tr>
                <tr>
                    <th>Name:</th>
                    <td>${driver.name}</td>
                </tr>
                <tr>
                    <th>Email:</th>
                    <td>${driver.email}</td>
                </tr>
                <tr>
                    <th>Phone:</th>
                    <td>${driver.phone}</td>
                </tr>
                <tr>
                    <th>License Number:</th>
                    <td>${driver.licenseNumber}</td>
                </tr>
                <tr>
                    <th>Experience (Years):</th>
                    <td>${driver.experienceYears}</td>
                </tr>
                <tr>
                    <th>Status:</th>
                    <td><span class="status ${driver.status.toLowerCase()}">${driver.status}</span></td>
                </tr>
            </table>
        </div>

        <a href="/drivers" class="back-button">Back to Driver List</a>
    </div>
</body>

</html>
