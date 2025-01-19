<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard Sidebar</title>
    <Style>
        /* styles.css */

        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
        }

        .sidebar {
            width: 260px;
            height: 100vh;
            position: fixed;
            top: 0;
            left: 0;
            background-color: #fff;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
            padding: 20px 15px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .sidebar-logo {
            display: flex;
            align-items: center;
            gap: 10px;
            padding: 10px 0;
        }

        .sidebar-logo img {
            width: 50%;
            height: auto;
        }

        .sidebar-logo h2 {
            font-size: 18px;
            font-weight: bold;
            color: #333;
        }

        .sidebar-menu {
            list-style: none;
            padding: 0;
            margin: 0;
            flex: 1;
        }

        .profile {
            display: flex;
            align-items: center;
            gap: 10px;
            margin: 10px 0;
            margin-bottom: 20%;
        }

        .profile img {
            width: 60px;
            height: 40px;
            border-radius: 50%;
            margin-left: 10px;
        }

        .profile .info {
            margin: 0;
            padding: 0;
        }

        .profile .info p {
            margin: 0;
            font-size: 16px;
            color: #333;
        }

        .profile .info a {
            text-decoration: none;
            font-size: 14px;
            color: #007bff;
        }

		hr {
		           margin: 10px 0;
		           border: none;
		           border-top: 1px solid #0eb646;
		           background-color:#0eb646;

		       }

        .sidebar-menu li {
            display: block;
        }

		.sidebar-menu li a {
		            text-decoration: none;
		            padding: 15px 20px;
		            display: flex;
		            align-items: center;
		            color: #383838;
		            font-size: 16px;
		            border-radius: 5px;
		            margin: 5px 10px;
		        }


				.sidebar-menu li a:hover {
				            color: #4a8f50;
				            background-color: #f0f0f0;
				        }

        .sidebar-menu .dot {
            height: 8px;
            width: 8px;
            background-color: #555;
            border-radius: 50%;
            margin-right: 10px;
        }

        .sidebar-menu li.active .dot {
            background-color: white;
        }
		 </Style>
		</head>

		<body>
		
		    <div class="sidebar">
				
		        <div class="sidebar-logo">
		            <img src="/img/logo.png" alt="gari Logo">
		           
		        </div>
		       <ul class="sidebar-menu">
		            <li>
		                <a href="/dashboard">
		                    <span class="dot"></span> Dashboard
		                </a>
		            </li>
		            <li>
		                <a href="/bookings">
		                    <span class="dot"></span> Booking
		                </a>
		            </li>
		            <li>
		                <a href="/vehicles">
		                    <span class="dot"></span> Vehicles
		                </a>
		            </li>
		            <li>
		                <a href="/client">
		                    <span class="dot"></span> Client
		                </a>
		            </li>
		            <li>
		                <a href="/drivers">
		                    <span class="dot"></span> Driver
		                </a>
		            </li>
		            <li>
		                <a href="#setting">
		                    <span class="dot"></span> Setting
		                </a>
		            </li>
		            <li>
		                <a href="#help">
		                    <span class="dot"></span> Help
		                </a>
		            </li>
		        </ul>
		        
		        <hr>
		        <div class="profile">
		            <img src="/img/admin.png" alt="Admin Profile">
		            <div class="info">
		                <p>Admin</p>
		                <a href="#">Logout</a>
		            </div>
		        </div>
		    </div>
			</body>

			</html>