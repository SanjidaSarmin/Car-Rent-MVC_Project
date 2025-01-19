<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>Booking Confirmation</title>
	<style>
	        /* General Styles */
	        body {

	            background: #f4f4f9;
	            margin: 0;
	            padding: 0;
	        }

	        /* Container Styles */
	        .confirmation-container {
	            max-width: 700px;
	            background: #fff;
	            padding: 30px;			
	            border-radius: 8px;
	            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
	            text-align: center;
				margin-left: 280px;
				margin-top: 30px;
				margin-bottom: 30px;
	        }

	        /* Title Styles */
	        .confirmation-container h3 {
	            font-size: 1.8rem;
	            color: #4caf50;
	            margin-bottom: 20px;
	            text-transform: uppercase;
	            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif
	        }

	        /* Paragraph Styles */
	        .confirmation-container p {
	            font-size: 1.1rem;
	            color: #111111;
	            margin-bottom: 20px;
	            font-family: Verdana, Geneva, Tahoma, sans-serif;
	        }

	        /* Booking Details List */
	        .confirmation-container ul {
	            list-style: none;
	            padding: 0;
	            margin: 0;
	            text-align: left;

	            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
	        }

	        .confirmation-container ul li {
	            font-size: 17px;
	            padding: 10px 0;
	            border-bottom: 1px solid #e0e0e0;
	            color: #333;
	            margin-left: 40px;
	        }

	        .confirmation-container ul li:last-child {
	            border-bottom: none;
	        }

	        /* Highlight Important Info */
	        .confirmation-container ul li span {
	            font-weight: bold;
	            color: #4caf50;
	        }

	        /* Footer Message */
	        .footer-message {
	            font-size: 0.9rem;
	            color: #888;
	            margin-top: 20px;
	        }
	    </style>

</head>
<body>
	<!-- Include the Navbar -->
			<jsp:include page="navbar.jsp" />
			
			<div class="confirmation-container">
			       <h3>Booking Confirmation</h3>
			       <p>${message}</p>
			       <p>Booking Details:</p>
			       <ul>
			           <li><span>Vehicle:</span> ${selectedCar.name}</li>
			           <li><span>Full Name:</span> ${booking.name}</li>
			           <li><span>Phone:</span> ${booking.phone}</li>
			           <li><span>Age:</span> ${booking.age}</li>
			           <li><span>Persons:</span> ${booking.person}</li>
			           <li><span>Pick-up Location:</span> ${booking.pickup_location}</li>
			           <li><span>Pick-up Date:</span> ${booking.pickup_date}</li>
			           <li><span>Return Date:</span> ${booking.return_date}</li>
			       </ul>
			       <p class="footer-message">Thank you for choosing our service!</p>
			   </div>

	<!-- Include the Footer -->
			<jsp:include page="Footer.jsp" />
			
</body>
</html>
