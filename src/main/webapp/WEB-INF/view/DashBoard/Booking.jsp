<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Dashboard</title>
	<style>
	        body {
	            margin: 0;
	            font-family: 'Arial', sans-serif;
	        }

	        /* Sidebar margin */
	        .main-content {
	            flex: 1;
	            padding: 20px;
	            background: #f9f9f9;
	            margin-left: 270px;
	        }

	        /* Search bar styling */
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
	            color: #fff;
	        }

	        /* Action bar styling */
	        .action-bar {
	            display: flex;
	            align-items: center;
	            gap: 10px;
	            margin-bottom: 20px;
	        }

	        .action-bar-link {
	            background-color: transparent;
	            color: #0056b3;
	            border: 1px solid #073464;
	            border-radius: 4px;
	            padding: 10px 20px;
	            font-size: 16px;
	            text-decoration: none;
	            text-align: center;
	            transition: all 0.3s ease;
	        }

	        .action-bar-link:hover {
	            background: #0056b3;
	            color: #fff;
	        }

	        /* Table container */
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
	            color: #fff;
	        }

	        table th,
	        table td {
	            padding: 10px;
	            text-align: left;
	            border-bottom: 1px solid #ddd;
	            word-wrap: break-word;
	        }

	        table th {
	            font-weight: bold;
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

	        /* Action links */
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
			        margin: 0; /* Remove extra margins */
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
			        border: 1px solid #42a339; 
			    }

			    .action-link.edit:hover {
			        background-color: #42a339; 
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
		


	        /* Responsive Design */
	        @media (max-width: 768px) {
	            .main-content {
	                margin-left: 0;
	                padding: 10px;
	            }

	            table {
	                display: block;
	                overflow-x: auto;
	                white-space: nowrap;
	            }

	            .top-bar {
	                flex-direction: column;
	            }

	            .action-bar {
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
	        <h2>Booking Management</h2>

			<!-- Action Bar -->
			<div class="action-bar">
			    <a href="/newVehicles" class="action-bar-link">+ Add New Booking</a>
			    <!-- <button class="filter-button">Filter</button> -->
			</div>
			<!-- Table Container for Booking Details -->
			<div class="table-container">
			    <table>
			        <thead>
			            <tr>
			                <th>ID</th>
			                <th>Vehicle ID</th>
							<th>Name</th>
							<th>Phone</th>
							<th>Age</th>
							<th>Person</th>
			                <th>Pickup Location</th>
			                <th>Pickup Date</th>
			                <th>Pickup Time</th>
			                <th>Return Date</th>
			                <th>Return Time</th>
			                
			                <th>Status</th>
			                <th>Action</th>
			            </tr>
			        </thead>
			        <tbody>
			            <c:forEach var="booking" items="${bookingList}">
			                <tr>
			                    <td>${booking.id}</td>
			                    <td>${booking.vehicle_id}</td>
								<td>${booking.name}</td>
								<td>${booking.phone}</td>
								<td>${booking.age}</td>
								<td>${booking.person}</td>
			                    <td>${booking.pickup_location}</td>
			                    <td>${booking.pickup_date}</td>
			                    <td>${booking.pickup_time}</td>
			                    <td>${booking.return_date}</td>
			                    <td>${booking.return_time}</td>
			                    
			                    
			                    <td><span class="status ${booking.status.toLowerCase()}">${booking.status}</span></td>
			                    <td>
			                        <a href="/bookingDetails/${booking.id}" class="action-link details">Details</a> |
			                        <a href="/bookingEdit/${booking.id}" class="action-link edit">Edit</a> 
									<a href="/BookingDelete/${booking.id}" class="action-link delete" onclick="return confirm('Are you sure you want to delete this booking?');">Delete</a>
			                    </td>
			                </tr>
			            </c:forEach>
			        </tbody>
			    </table>
			</div>
			</div>
			</body>

			</html>