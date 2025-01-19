<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Booking</title>
	<style>
			/* General Styles */
	body {
	    font-family: 'Arial', sans-serif;
	    margin: 0;
	    padding: 0;
	    background-color: #f4f6f9;
	    color: #333;
	}


	/* Main Content Styles */
	/* Main Content Styles */
	.main-content {
	    margin-left: 370px;
	    padding: 30px;
	    background-color: white;
	    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	    border-radius: 10px;
	    max-width: 800px;
	    margin-top: 20px;
	}

	h2 {
	    font-size: 28px;
	    margin-bottom: 20px;
	    color: #fdfdfd;
	    text-align: center;
	    border-bottom: 2px solid #e0e0e0;
	    padding: 10px;
	    background-color: #289443;
	    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
	}

	/* Form Styles */
	.update-vehicle-form {
	    display: flex;
	    flex-direction: column;
	    gap: 20px;
	    padding: 20px;
	    background-color: #f9f9f9;
	    font-family: 'Times New Roman', Times, serif;
	    border-radius: 4px;
	    box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
	}

	.update-vehicle-form label {
	    font-weight: bold;
	    color: #302f2f;
	    font-size: 18px;
	}

	.update-vehicle-form input,
	.update-vehicle-form select {
	    padding: 12px 15px;
	    border: 1px solid #ccc;
	    border-radius: 5px;
	    font-size: 18px;
	    background-color: white;
	    transition: border-color 0.3s ease, box-shadow 0.3s ease;
	    font-family: 'Times New Roman', Times, serif;
	}

	.update-vehicle-form input:focus,
	.update-vehicle-form select:focus {
	    outline: none;
	    border-color: #4ab164;
	    box-shadow: 0 0 5px rgba(52, 219, 116, 0.5);
	}

	.update-vehicle-form .submit-button {
	    padding: 15px;
	    border: none;
	    border-radius: 8px;
	    font-size: 18px;
	    font-weight: bold;
	    color: white;
	    background-color: #289443;
	    cursor: pointer;
	    transition: background-color 0.3s ease, transform 0.2s ease;
	    font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
	}

	.update-vehicle-form .submit-button:hover {
	    background-color: #257439;
	    transform: translateY(-2px);
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

	/* Responsive Design */
	@media (max-width: 768px) {
	    .main-content {
	        margin-left: 10px;
	        margin-right: 10px;
	    }

	    .update-vehicle-form {
	        padding: 15px;
	        gap: 15px;
	    }

	    h2 {
	        font-size: 24px;
	    }
	}
		</style>
</head>
<body>
    <!-- Include Sidebar -->
    <jsp:include page="Sidebar.jsp" />

	 <!-- Main Content -->
	 <div class="main-content">
	     <h2>Update Booking</h2>
	     <form action="/save" method="post" class="update-vehicle-form">
	         <!-- Booking ID -->
	         <label for="bookingId">Booking ID:</label>
	         <input type="text" id="bookingId" name="bookingId" value="${booking.id}" required>

	         <!-- Vehicle ID -->
	         <label for="vehicleId">Vehicle ID:</label>
	         <input type="text" id="vehicleId" name="vehicleId" value="${booking.id}" required>

	         <!-- Pick-up Details -->
	         <label for="pickup_location">Pick-up Location:</label>
	         <input type="text" id="pickup_location" name="pickup_location" value="${booking.pickup_location}" placeholder="Enter location or zip code" required>

	         <label for="pickup_date">Pick-up Date:</label>
	         <input type="date" id="pickup_date" name="pickup_date" value="${booking.pickup_date}" required>

	         <label for="pickup_time">Pick-up Time:</label>
	         <select id="pickup_time" name="pickup_time"  value="${booking.pickup_time}" required>
				<option value="noon">Noon</option>
				<option value="morning">Morning</option>
				<option value="evening">Evening</option>
				<option value="night">Night</option>
	         </select>

	         <!-- Return Details -->
	         <label for="return_date">Return Date:</label>
	         <input type="date" id="return_date" name="return_date" value="${booking.return_date}" required>

	         <label for="return_time">Return Time:</label>
	         <select id="return_time" name="return_time" value="${booking.return_time}" required>
				<option value="noon">Noon</option>
				<option value="morning">Morning</option>
				<option value="evening">Evening</option>
				<option value="night">Night</option>
	         </select>

	         <!-- Customer Details -->
	         <label for="person">Persons:</label>
	         <input type="number" id="person" name="person" value="${booking.person}" placeholder="How many persons?" required>

	         <label for="name">Full Name:</label>
	         <input type="text" id="name" name="name" value="${booking.name}" placeholder="Enter your full name" required>

	         <label for="phone">Phone Number:</label>
	         <input type="number" id="phone" name="phone" value="${booking.phone}" placeholder="Enter your phone number" required>

	         <label for="age">Age:</label>
	         <input type="number" id="age" name="age" value="${booking.age}" placeholder="Enter your age" required>
			 
			 <label for="status">Status:</label>
			   <select name="status" id="status" value=${booking.status} required>
			       <option value="pending">pending</option>
				   <option value="complete">Complete</option>
				   <option value="cancel">Cancel</option>
				   
			   </select>


	         <!-- Submit Button -->
	         <button type="submit" class="submit-button">Update Booking</button>
	     </form>
	 </div>

	</body>
	</html>
