<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Dashboard</title>
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
            border-bottom: 1px solid #ddd;
        }

        table th {
            font-weight: bold;
        }

        .status {
            padding: 5px 10px;
            border-radius: 12px;
            color: #fff;
            font-size: 12px;
        }

        .status.Pending {
            background: #ffc107;
        }

        .status.Active {
            background: #28a745;
        }

        .status.Inactive {
            background: #dc3545;
        }

        .status.OnSale {
            background: #007bff;
        }

        .status.Bouncing {
            background: #6f42c1;
        }
    </style>
</head>

<body>
    <!-- Side Navbar -->
    <!-- Include the header -->
    <jsp:include page="Sidebar.jsp" />

    <!-- Main Content -->
    <div class="main-content">
        <!-- Search Bar -->
        <div class="top-bar">
            <input type="text" placeholder="Search for a customer...">
            <button>Search</button>
        </div>

        <!-- Title -->
        <h2>Client Management</h2>

		<!-- Action Bar -->
				<div class="action-bar">
				    <a href="#" class="action-bar-link">+ Add New Client</a>
				    <!-- <button class="filter-button">Filter</button> -->
				</div>

        <!-- Table Container -->
        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th>Customer Name</th>
                        <th>Customer ID</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Membership</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Example Rows -->
                    <tr>
                        <td>Jane Doe</td>
                        <td>#CU123456</td>
                        <td>jane.doe@example.com</td>
                        <td>+1-234-567-8901</td>
                        <td>Gold</td>
                        <td><span class="status active">Active</span></td>
                    </tr>
                    <tr>
                        <td>John Smith</td>
                        <td>#CU654321</td>
                        <td>john.smith@example.com</td>
                        <td>+1-987-654-3210</td>
                        <td>Silver</td>
                        <td><span class="status inactive">Inactive</span></td>
                    </tr>
                    <tr>
                        <td>Mary Johnson</td>
                        <td>#CU112233</td>
                        <td>mary.johnson@example.com</td>
                        <td>+1-456-789-0123</td>
                        <td>Platinum</td>
                        <td><span class="status active">Active</span></td>
                    </tr>
                    <tr>
                        <td>Peter Brown</td>
                        <td>#CU998877</td>
                        <td>peter.brown@example.com</td>
                        <td>+1-321-654-9870</td>
                        <td>Bronze</td>
                        <td><span class="status inactive">Inactive</span></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</body>


</html>