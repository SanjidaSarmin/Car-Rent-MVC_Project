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
			   .details-table {
			       margin-top: 20px;
			   }

			   .details-table table {
				width: 100%;
				           border-collapse: collapse;
				           margin: 10px 0;
			   }

			   .details-table table th,
			   .details-table table td {
				padding: 15px;
				            text-align: left;
				            border-bottom: 1px solid #ddd; /* Text size */
			   }

			   .details-table table th {
				color:#111111;
				            font-weight: bold;
				            text-transform: uppercase;
				            letter-spacing: 1px;
			   }

			   .details-table table td {
				font-size: 16px;
				            color: #555; /
			   }

			   /* Status badges */
			   	        .status {
			   	            padding: 5px 10px;
			   	            border-radius: 4px;
			   	            color: #fff;
			   	            font-size: 12px;
			   	            font-weight: bold;
			   	            text-align: center;
			   	        }

			   	        .status.pending {
			   	            background-color: #ddd458;
			   	        }

			   	        .status.complete {
			   	            background-color: #28a745;
			   	        }

			   	        .status.cancel {
			   	            background-color: #dc3545;
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
        <!-- Image -->
        <img src="/img/CarView.jpg" alt="Car Image">

        <!-- Orange Banner -->
        <div class="banner">
            <h1>START YOUR WEEK IN STYLE</h1>
        </div>
    </div>

	<!-- Main Content -->
	    <div class="main-content">
	        <h2>Booking Details</h2>

	        <div class="details-table">
	            <table>
	                <tr>
	                    <th>Booking ID:</th>
	                    <td>${booking.id}</td>
	                </tr>
	                <tr>
	                    <th>Vehicle ID:</th>
	                    <td>${booking.vehicle_id}</td>
	                </tr>
	                <tr>
	                    <th>Pickup Location:</th>
	                    <td>${booking.pickup_location}</td>
	                </tr>
	                <tr>
	                    <th>Pickup Date:</th>
	                    <td>${booking.pickup_date}</td>
	                </tr>
	                <tr>
	                    <th>Pickup Time:</th>
	                    <td>${booking.pickup_time}</td>
	                </tr>
	                <tr>
	                    <th>Return Date:</th>
	                    <td>${booking.return_date}</td>
	                </tr>
	                <tr>
	                    <th>Return Time:</th>
	                    <td>${booking.return_time}</td>
	                </tr>
	                <tr>
	                    <th>Number of Persons:</th>
	                    <td>${booking.person}</td>
	                </tr>
	                <tr>
	                    <th>Customer Name:</th>
	                    <td>${booking.name}</td>
	                </tr>
	                <tr>
	                    <th>Customer Phone:</th>
	                    <td>${booking.phone}</td>
	                </tr>
	                <tr>
	                    <th>Customer Age:</th>
	                    <td>${booking.age}</td>
	                </tr>
	                <tr>
	                    <th>Status:</th>
	                    <td>${booking.status}</td>
	                </tr>
	            </table>
	        </div>

	        <a href="/bookings" class="back-button">Back to Booking List</a>
	    </div>
	</body>

	</html>