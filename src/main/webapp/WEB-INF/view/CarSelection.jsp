<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>Car Selection</title>
    <style>
		/* General Styles */
		body {
		    font-family: 'Arial', sans-serif;
		    background: #f4f4f9;
		    margin: 0;
		    padding: 0;
		}

		.title {
		    font-size: 2rem;
		    text-align: center;
		    margin-bottom: 20px;
		    color: #333;
		}

		/* Container Styles */
		.car-selection-container {
		    max-width: 100%;
		    background: #fff;
		    padding: 30px;
		    border-radius: 8px;
		    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
		}

		/* Form Styles */
		.car-selection-form {
		    display: flex;
		    flex-direction: column;
		    gap: 20px;
		}

		/* Car List Styles */
		/* Car List Styles */
		.car-list {
		    display: grid;
		    grid-template-columns: repeat(3, 1fr); /* 3 cards per row */
		    gap: 20px;
		}

		/* Adjust card styles */
		.car-card {
		    display: block;
		    border: 2px solid #e0e0e0;
		    border-radius: 8px;
		    padding: 15px;
		    cursor: pointer;
		    background: #fff;
		    transition: 0.3s ease;
		    text-align: center; /* Center-align card content */
		}

		.car-card:hover {
		    border-color: #4caf50;
		    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
		    transform: scale(1.03);
		}

		/* Responsive Design */
		@media (max-width: 768px) {
		    .car-list {
		        grid-template-columns: repeat(2, 1fr); /* 2 cards per row for tablets */
		    }
		}

		@media (max-width: 480px) {
		    .car-list {
		        grid-template-columns: 1fr; /* 1 card per row for smaller screens */
		    }
		}


		/* Car Info Styles */
		.car-info {
		    text-align: center;
		}

		.car-name {
		    font-size: 1.2rem;
		    font-weight: bold;
		    margin-bottom: 8px;
		    color: #333;
		}

		.car-type, .car-price {
		    font-size: 0.9rem;
		    color: #666;
		}

		/* Radio Button Styles */
		.car-card input[type="radio"] {
		    position: absolute;
		    opacity: 0;
		    cursor: pointer;
		}

		.car-card input[type="radio"]:checked + .car-info {
		    border-color: #4caf50;
		    color: #4caf50;
		}

		/* Button Styles */
		.submit-button {
		    padding: 10px 15px;
		    background: #4caf50;
		    color: #fff;
		    border: none;
		    border-radius: 4px;
		    font-size: 1rem;
		    cursor: pointer;
		    transition: 0.3s ease;
		    align-self: center;
		}

		.submit-button:hover {
		    background: #388e3c;
		}

	</style>
</head>
<body>
	<!-- Include the Navbar -->
				<jsp:include page="navbar.jsp" />
				
				<h1 class="title">Select a Car</h1>
				<div class="car-selection-container">
				    <form action="/confirm-booking" method="POST" class="car-selection-form">
				        <!-- Pass the booking details as hidden fields -->
				        <input type="hidden" name="id" value="${booking.id}">
				        <input type="hidden" name="pickup_location" value="${booking.pickup_location}">
				        <input type="hidden" name="pickup_date" value="${booking.pickup_date}">
				        <input type="hidden" name="pickup_time" value="${booking.pickup_time}">
				        <input type="hidden" name="return_date" value="${booking.return_date}">
				        <input type="hidden" name="return_time" value="${booking.return_time}">
				        <input type="hidden" name="person" value="${booking.person}">
				        <input type="hidden" name="name" value="${booking.name}">
				        <input type="hidden" name="phone" value="${booking.phone}">
				        <input type="hidden" name="age" value="${booking.age}">
				        
				        <!-- Vehicle selection -->
						<div class="car-list">
						    <c:forEach var="vehicle" items="${availableVehicles}">
						        <label class="car-card">
						            <input type="radio" name="vehicleId" value="${vehicle.id}" required>
						            <div class="car-info">
						                <h3 class="car-name">Name: ${vehicle.name}</h3>
										<p class="car-price">Person Capacity: ${vehicle.capacity}</p>
						                <p class="car-type">Type: ${vehicle.type}</p>
						                <p class="car-price">Rental Price: ${vehicle.rentalPrice} BDT</p>
						            </div>
						        </label>
						    </c:forEach>
						</div>

				        <button type="submit" class="submit-button">Confirm Booking</button>
				    </form>
				</div>
	
	<!-- Include the Footer -->
	 	<jsp:include page="Footer.jsp" />
</body>
</html>
