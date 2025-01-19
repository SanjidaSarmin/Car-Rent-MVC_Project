<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vehicles Dashboard</title>
    <style>
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
        }

        /* Main Part Start */
        .main-content {
            flex: 1;
            padding: 20px;
            background: #f9f9f9;
            margin-left: 280px;
        }

        .top-bar {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
            gap: 10px;
        }

        .top-bar input {
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            width: 300px;
            transition: border-color 0.3s ease;
        }

        .top-bar input:hover {
            border-color: #007bff;
        }

        .top-bar button {
            display: inline-block;
            background-color: transparent;
            color: #0056b3;
            border: 1px solid #073464;
            border-radius: 4px;
            padding: 10px 15px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .top-bar button:hover {
            background: #0056b3;
            color: #f7f7f7;
        }
        .h2 {
            color: #000000;
            font-size: 36px;
        }
      <!--  .action-bar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px;
            background: #fff;
            margin-top: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            margin-bottom: 10px;
        }-->
        

		.action-bar {
		    display: flex;
		    align-items: center;
		    gap: 10px; 
		}

		.action-bar-link {
		    display: inline-block;
		    background-color: transparent;
		    color: #0056b3;
		    border: 1px solid #073464;
		    border-radius: 4px;
		    padding: 12px 25px;
		    cursor: pointer;
		    transition: all 0.3s ease;
		    font-size: 16px;
		    text-decoration: none; /* Remove underline */
		    text-align: center;
		}

		.action-bar-link:hover {
		    background: #0056b3;
		    color: #f7f7f7;
		}



        .action-bar .filter-button {
            background: #6c63ff;
            margin-left: auto;
            border: none;
            /* background: #007bff; */
            color: #fff;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s ease;
            font-size: 16px; 
        }
		.action-link-group {
		    display: flex; /* Arrange buttons side by side */
		    gap: 10px; /* Add spacing between buttons */
		    align-items: center; /* Align vertically */
		}

		.action-link {
		    text-decoration: none;
		    font-size: 14px;
		    padding: 5px 10px;
		    border-radius: 4px;
		    transition: all 0.3s ease;
		    text-align: center;
		    display: inline-block;
		}

		.action-link.details {
		    
		    color: #007bff;
		    border: 1px solid #007bff;
		}

		.action-link.details:hover {
		    background-color: #0056b3;
		    color: #fff;
		}

		.action-link.edit {
		    color: #42a339; 
		    border: 1px solid  #42a339; 
		}

		.action-link.edit:hover {
		    background-color:  #42a339; 
		    color: #fff;
		}

		.action-link.delete {
		    color: #dc3545; 
		    border: 1px solid #dc3545;
		}

		.action-link.delete:hover {
		    background-color: #a71d2a;
		    color: #fff;
		}


        .table-container {
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

		table thead {
		           background: #46a156;
				   color: #ffffff;
		       }
        table th,
        table td {
            padding: 15px;
            text-align: left;
            border-bottom: 1.1px solid #ddd;
        }

        table th {
            font-weight: bold;
        }

		/* Status Styling */
		.status {
		    padding: 3px 8px;
		    border-radius: 4px;
		    color: #fff;
		    font-size: 12px;
		    font-weight: bold;
		    display: inline-block;
		    text-align: center;
		}

		/* Status Variations */
		.status.active {
		    background-color: #28a745; /* Green for Active */
		}

		.status.inactive {
		    background-color: #dc3545; /* Red for Inactive */
		}

		/* Availability Styling */
		.availability {
		    padding: 3px 5px;
		    border-radius: 4px;
		    color: #fff;
		    font-size: 12px;
		    font-weight: bold;
		    display: inline-block;
		    text-align: center;
		}

		/* Availability Variations */
		.availability.available {
		    background-color: #007bff; /* Blue for Available */
		}

		.availability.not-available {
		    background-color: #ffc107; /* Yellow for Not Available */
		}

		.availability.under-maintenance {
		    background-color: #6c757d; /* Gray for Under Maintenance */
		}

		@media (max-width: 768px) {
		    .main-content {
		        padding: 10px;
		    }
		    table {
		        display: block;
		        overflow-x: auto;
		        white-space: nowrap;
		    }
		    .action-bar {
		        display: flex;
		        flex-direction: column;
		        gap: 10px;
		    }
		}

		
    </style>
</head>

<body>
    <!-- Include the header -->
    <jsp:include page="Sidebar.jsp" />

    <!-- Main Content -->
    <div class="main-content">
        <!-- Search Bar -->
        <div class="top-bar">
            <input type="text" placeholder="Search for a vehicle...">
            <button>Search</button>
        </div>

        <!-- Title -->
        <h2>Car/Vehicle Management</h2>

		<!-- Action Bar -->
		<div class="action-bar">
		    <a href="/newVehicles" class="action-bar-link">+ Add New Vehicle</a>
		    <!-- <button class="filter-button">Filter</button> -->
		</div>


        <!-- Table Container -->
        <div class="table-container">
			<table>
			    <thead>
			        <tr>
						<th> ID</th>
			            <th>Name</th>
						<th>Image</th>
			            <th>License Plate</th>
			            <th>Type</th>
			            <th>Status</th>
			            <th>Rental Price</th>
			            <th>Availability</th>
						<th>Action</th>
			        </tr>
			    </thead>
			    <tbody>
			        <c:forEach var="vehicle" items="${vehicleList}">
			            <tr>
							<td>${vehicle.id}</td>
			                <td>${vehicle.name}</td>
							<td>${vehicle.capacity}</td>
							<td><img src="${vehicle.imageUrl}" style="width: 100px; height: auto;"></td>
			                <td>${vehicle.licensePlate}</td>
			                <td>${vehicle.type}</td>
							<td><span class="status ${vehicle.status.toLowerCase()}">${vehicle.status}</span></td>
							<td>৳${vehicle.rentalPrice}</td>
							<td><span class="availability ${vehicle.availability.toLowerCase().replace(' ', '-')}">${vehicle.availability}</span></td>
							
							<td>
							       <a href="/VehiDetails/${vehicle.id}" class="action-link details">Details</a>|
							       <a href="/VehiEdit/${vehicle.id}" class="action-link edit">Edit</a>|
							       <a href="/vehidelete/${vehicle.id}" class="action-link delete" onclick="return confirm('Are you sure you want to delete this vehicle?');">Delete</a>
							 </td>
			            </tr>
			        </c:forEach>
			    </tbody>
			</table>

        </div>
    </div>
</body>

</html>