<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Reservation</title>
  <style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    .logo {
        background-color: #f4f4f4;
        padding: 10px;
        text-align: right;
    }
    .logo a {
        text-decoration: none;
        font-size: 16px;
        color: #000000;
        padding: 6px 15px;
        border: 2px solid #188a47;
        border-radius: 5px;
        transition: all 0.3s ease-in-out;
        margin: 10px;
        font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    }

    .logo a:hover {
        background-color:#0d5f2f; 
        color: #fcfcfc; 
    }

    .reservation-section {
        background-image: url('/img/lob_new_overview.jpg');
        background-size: cover;
        background-position: center;
        padding: 30px 10px;
        text-align: center;
        position: relative;
    }

    .reservation-form {
        background-color: rgba(41, 129, 71, 0.7); 
        padding: 30px;
        border-radius: 10px;
        display: flex;
        flex-direction: column;
        max-width: 1000px; 
        margin: auto;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        margin-bottom: 25%;
    }

    .form-row {
        display: flex;
        justify-content: space-between;
        margin-bottom: 20px;
        gap: 20px;
    }

    .form-group {
        flex: 1; 
        margin-right: 15px;
    }

    .form-group:last-child {
        margin-right: 0; /* Remove space for the last item in the row */
    }

    label {
        font-weight: bold;
        display: block;
        margin-bottom: 5px;
    }

    input, select {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    .submit-button {
        background-color: #0d5f2f;
        color: #fff;
        padding: 10px 10px;
        border: none;
        border-radius: 5px;
        font-size: 18px;
        cursor: pointer;
        margin-top: 10px;
        font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    }

    .submit-button:hover {
        background-color: #104427;
    }


    .additional-info {
        display: flex;
        justify-content: space-between;
        align-items: flex-start;
        padding: 20px;
        max-width: 100%;
        margin: 20px auto;
        font-size: 14px;
        line-height: 1.6;
        color: #1f1e1e;
        background-color: #f9f9f9;
        border-radius: 10px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        
    }

    .additional-info div {
        flex: 1;
        padding: 0 10px;
        margin-left: 5%;
    }

    .additional-info h4 {
        font-size: 16px;
        margin-bottom: 5px;
    }

    .additional-info p {
        margin: 0;
    }

    .additional-info a {
        color: #137734;
        text-decoration: none;
    }

    .additional-info a:hover {
        text-decoration: underline;
    }
</style>
</head>

<body>
	<!-- Include the Navbar -->
		<jsp:include page="navbar.jsp" />

		
    <div class="logo">
         <a href=""> Sign In</a>
    </div>
    
    <div class="reservation-section">
        <h2>Reserve Your Car Now</h2>
        <form action="/book-car" method="POST" class="reservation-form">
			<!-- First Row -->
			            <div class="form-row">
			                <div class="form-group">
			                    <label for="pickup-location">Pick-up Location</label>
			                    <input type="text" id="pickup_location" name="pickup_location" placeholder="Enter location or zip code" required>
			                </div>
			                <div class="form-group">
			                    <label for="pickup-date">Pick-up Date</label>
			                    <input type="date" id="pickup_date" name="pickup_date" required>
			                </div>
			                <div class="form-group">
			                    <label for="pickup-time">Pick-up Time</label>
			                    <select id="pickup_time" name="pickup_time">
			                        <option value="noon">Noon</option>
			                        <option value="morning">Morning</option>
			                        <option value="evening">Evening</option>
			                        <option value="night">Night</option>
			                    </select>
			                </div>
			            </div>
			            <!-- Second Row -->
			            <div class="form-row">
			                <div class="form-group">
			                    <label for="return-date">Return Date</label>
			                    <input type="date" id="return_date" name="return_date" required>
			                </div>
			                <div class="form-group">
			                    <label for="return_time">Return Time</label>
			                    <select id="return_time" name="return_time">
			                        <option value="noon">Noon</option>
			                        <option value="morning">Morning</option>
			                        <option value="evening">Evening</option>
			                        <option value="night">Night</option>
			                    </select>
			                </div>
			                <div class="form-group">
								<label for="person">Persons</label>
								<input type="number" id="person" name="person" placeholder="How many person?" required>
			                </div>
			            </div>
			            <!-- Third Row  -->            
						<div class="form-row">
                <div class="form-group">
                    <label for="name">Full name</label>
                    <input type="text" id="name" name="name" placeholder="Enter your full name" required>
                </div>
                <div class="form-group">
                    <label for="phone">Phone Number</label>
                    <input type="number" id="phone" name="phone" placeholder="Enter your Phone number" required>
                </div>
                <div class="form-group">
                    <label for="age">Age</label>
                     <input type="number" id="age" name="age" placeholder="Enter your Age" required>
                </div>
            </div>
            <!-- Submit Button -->
            <button type="submit" class="submit-button">Select My Car</button>
        </form>
    </div>
    
    <div class="additional-info">
        <div>
            <h4>Customer Care Assistance</h4>
            <p>1-800-214-6094</p>
            <p>Monday-Friday, 7:30 am - 7:30 pm</p>
            <p>Saturday-Sunday, 8:00 am - 6:30 pm</p>
        </div>
        <div>
            <h4>Reservations</h4>
            <p>800-268-8900</p>
            <p>24 hours, 7 days a week</p>
        </div>
        <div>
            <h4>Worldwide Telephone Numbers</h4>
            <p><a href="#">Find a List for a Specific Country Now</a></p>
        </div>
    </div>
	
	<!-- Include the Footer -->
		<jsp:include page="Footer.jsp" />
</body>

</html>