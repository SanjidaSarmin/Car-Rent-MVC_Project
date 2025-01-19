<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Vehicle</title>
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
	.add-vehicle-form {
	    display: flex;
	    flex-direction: column;
	    gap: 20px;
	    padding: 20px;
	    background-color: #f9f9f9;
	    font-family:'Times New Roman', Times, serif;
	    border-radius: 4px;
	    box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
		
	}

	.add-vehicle-form label {
	    font-weight: bold;
	    color: #302f2f;
	    font-size: 18px;
	}

	.add-vehicle-form input,
	.add-vehicle-form select {
	    padding: 12px 15px;
	    border: 1px solid #ccc;
	    border-radius: 5px;
	    font-size: 18px;
	    background-color: white;
	    transition: border-color 0.3s ease, box-shadow 0.3s ease;
	    font-family:'Times New Roman', Times, serif;
	}

	.add-vehicle-form input:focus,
	.add-vehicle-form select:focus {
	    outline: none;
	    border-color:  #4ab164;
	    box-shadow: 0 0 5px rgba(52, 219, 116, 0.5);
	}

	.add-vehicle-form .submit-button {
	    padding: 15px;
	    border: none;
	    border-radius: 8px;
	    font-size: 18px;
	    font-weight: bold;
	    color: white;
	    background-color:  #289443;
	    cursor: pointer;
	    transition: background-color 0.3s ease, transform 0.2s ease;
	    font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
	}

	.add-vehicle-form .submit-button:hover {
	    background-color:  #257439;
	    transform: translateY(-2px);
	}

	/* Responsive Design */
	@media (max-width: 768px) {
	    .main-content {
	        margin-left: 10px;
	        margin-right: 10px;
	    }

	    .add-vehicle-form {
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
        <h2>Update Vehicle</h2>
        <form action="/vehiSave" method="post" class="add-vehicle-form" enctype="multipart/form-data">
			<label for="id">Vehicle Id:</label>
			<input type="text" id="id" name="id" value=${vehicle.id} required>
			
            <label for="name">Vehicle Name:</label>
            <input type="text" id="name" name="name" value=${vehicle.name} required>
			
			<label for="capacity">Vehicle Capacity:</label>
			<input type="number" id="capacity" name="capacity" value=${vehicle.capacity} required>
			
			<label for="imageFile">Upload New Image:</label>
			   <input type="file" id="imageFile" name="imageFile" accept="image/*">
			   <p>Current Image:</p>
			   <img src="${vehicle.imageUrl}" alt="Vehicle Image" width="100">

            <label for="licensePlate">License Plate:</label>
            <input type="text" id="licensePlate" name="licensePlate" value=${vehicle.licensePlate} required>

            <label for="type">Type:</label>
            <select name="type" id="type" value=${vehicle.type} required>
                <option value="Sedan">Private Car</option>
                <option value="SUV">SUV</option>
                <option value="Pickup">Pickup</option>
                <option value="Truck">Noah</option>
                <option value="Van">Haice</option>
            </select>

            <label for="status">Status:</label>
            <select name="status" id="status" value=${vehicle.status} required>
                <option value="Active">Active</option>
                <option value="Inactive">Inactive</option>
            </select>

            <label for="rentalPrice">Rental Price (৳/Day):</label>
            <input type="number" id="rentalPrice" name="rentalPrice" step="0.01" value=${vehicle.rentalPrice} required>

            <label for="availability">Availability:</label>
            <select name="availability" id="availability" value=${vehicle.availability} required>
                <option value="Available">Available</option>
                <option value="Rented">Rented</option>
                <option value="Under Maintenance">Under Maintenance</option>
            </select>

            <button type="submit" class="submit-button">Update Vehicle</button>
        </form>
    </div>
</body>
</html>
