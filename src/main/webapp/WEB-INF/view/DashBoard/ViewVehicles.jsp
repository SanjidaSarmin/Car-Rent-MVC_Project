<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vehicle Cover</title>
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
			margin-left:390px;
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

        /* Vehicle Details Table */
        .vehicle-details {
            margin-top: 20px;
        }

        .vehicle-details table {
            width: 100%;
            border-collapse: collapse;
            margin: 10px 0;
        }

        .vehicle-details table th,
        .vehicle-details table td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd; /* Light grey border */
        }

        .vehicle-details table th {
            <!--background-color: #0056b3; -->/* Blue header background */
            color: #fff; /* White text */
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .vehicle-details table td {
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

        /* Availability Labels */
        .availability {
            display: inline-block;
            padding: 6px 12px;
            border-radius: 4px;
            font-weight: bold;
            color: #fff;
        }

        .availability.available {
            background-color: #4caf50; /* Green for available */
        }

        .availability.not-available {
            background-color: #ff5722; /* Red for not available */
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
	        <h2>Vehicle Details</h2>

	        <div class="vehicle-details">
	            <table>
	                <tr>
	                    <th>ID</th>
	                    <td>${vehicle.id}</td>
	                </tr>
	                <tr>
	                    <th>Name</th>
	                    <td>${vehicle.name}</td>
	                </tr>
	                <tr>
	                    <th>License Plate</th>
	                    <td>${vehicle.licensePlate}</td>
	                </tr>
	                <tr>
	                    <th>Type</th>
	                    <td>${vehicle.type}</td>
	                </tr>
	                <tr>
	                    <th>Status</th>
	                    <td><span class="status ${vehicle.status.toLowerCase()}">${vehicle.status}</span></td>
	                </tr>
	                <tr>
	                    <th>Rental Price</th>
	                    <td>৳${vehicle.rentalPrice}</td>
	                </tr>
	                <tr>
	                    <th>Availability</th>
	                    <td><span class="availability ${vehicle.availability.toLowerCase().replace(' ', '-')}">${vehicle.availability}</span></td>
	                </tr>
	            </table>
	        </div>

	        <a href="/vehicles" class="back-button">Back to Vehicle List</a>
	    </div>
	</body>

	</html>  