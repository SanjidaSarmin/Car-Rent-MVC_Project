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
		/* DashBoard */
		        .dashboard {
		            margin-left: 280px;
		            padding: 20px;
		            background: #f8f9fa;
		            min-height: 45vh;
		        }

		        .dashboard h1 {
		            font-size: 24px;
		            font-weight: bold;
		            color: #333;
		            margin-bottom: 20px;
		        }

		        .cards {
		            display: grid;
		            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
		            gap: 20px;
		        }

		        .card {
		            display: block;
		            text-decoration: none;
		            border: 1px solid #ccc;
		            border-radius: 8px;
		            background-color: #fff;
		            padding: 16px;
		            margin: 16px 0;
		            transition: transform 0.3s;
		            color: #333;

		        }

		        .card:hover {
		            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
		            transform: translateY(-4px);
		            text-decoration: none;

		        }

		        .card h3 {
		            font-size: 16px;
		            color: #555;
		            margin-bottom: 10px;
		        }

		        .card-content {
		            display: flex;
		            justify-content: space-between;
		            align-items: center;
		        }

		        .card-content .value {
		            font-size: 24px;
		            font-weight: bold;
		            color: #333;
		        }

		        .card-content .stats {
		            text-align: right;
		        }

		        .card-content .percentage {
		            font-size: 14px;
		            margin-bottom: 5px;
		            display: block;
		        }

		        .card-content .percentage.up {
		            color: #28a745;
		        }

		        .card-content .percentage.down {
		            color: #dc3545;
		        }

		        .card-content .progress {
		            font-size: 14px;
		            color: #888;
		        }

		        /* FlowChart */
		        .charts-container {
		            display: grid;
		            grid-template-columns: repeat(auto-fit, minmax(400px, 1fr));
		            padding: 20px;
		            margin-left: 280px;
		        }

		        .chart-card {
		            background: #fff;
		            border-radius: 10px;
		            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
		            padding: 20px;
		            text-align: center;
		            gap: 2%;
		            margin-left: 7%;
		            margin-right: 7%;
		        }

		        .chart-card h3 {
		            font-size: 18px;
		            color: #333;
		            margin-bottom: 20px;
		        }

		        .bar-chart {
		            display: flex;
		            justify-content: space-between;
		            align-items: flex-end;
		            height: 200px;
		            padding: 10px 0;
		            border-top: 2px solid #e9ecef;
		            border-bottom: 2px solid #e9ecef;
		        }

				.bar {
				            width: 7%;
				            background: #1baf59;
				            border-radius: 5px 5px 0 0;
				            display: flex;
				            flex-direction: column;
				            justify-content: flex-end;
				            align-items: center;
				            height: var(--height);
				            transition: 0.3s;

				        }

				        .bar:hover {
				            background:  #178042;
				            transform: scale(1.1);
				        }

		        .bar span {
		            font-size: 12px;
		            color: #070707;
		            margin-top: 5px;
		        }
		    </Style>
		</head>

		<body>
			<!-- Include the Navbar -->
						<jsp:include page="Sidebar.jsp" />
					<!--Dashboard-->
					<div class="dashboard">
					    <h1>Car Rental Dashboard</h1>
					    <div class="cards">
					        <!-- Card 1: Total Booking -->
							<a href="/bookings" class="card">
															<h3>Booking</h3>
															<div class="card-content">
														<span class="value">128</span>
															 
														 </div>
													</a>

					        <!-- Card 2: Total Car -->
							<a href="/car" class="card">
												            <h3>Cars Available</h3>
												            <div class="card-content">
												                <span class="value">215</span>
												                <div class="stats">
												                    <span class="percentage down">↓ 2.0%</span>
												                    <span class="progress">65%</span>
												                </div>
												            </div>
												        </a>

					        <!-- Card 3: Active Rentals -->
							<a href="/drivers" class="card">
															<h3>Total Driver</h3>
															<div class="card-content">
															<span class="value">128</span>
																																				 
														</div>
														</a>
							<a href="#" class="card">
																		            <h3>Total Rentals</h3>
																		            <div class="card-content">
																		                <span class="value">1,542</span>
																		                <div class="stats">
																		                    <span class="percentage up">↑ 8.3%</span>
																		                    <span class="progress">82%</span>
																		                </div>
																		            </div>
																		        </a>
					        

					        <!-- Card 4: Cars Available -->
							<a href="#" class="card">
												            <h3>Active Rentals</h3>
												            <div class="card-content">
												                <span class="value">328</span>
												                <div class="stats">
												                    <span class="percentage up">↑ 3.2%</span>
												                    <span class="progress">45%</span>
												                </div>
												            </div>
												        </a>
						
						
														
					        
							<a href="#" class="card">
												            <h3>Total Revenue</h3>
												            <div class="card-content">
												                <span class="value">৳1,290,450.00</span>
												                <div class="stats">
												                    <span class="percentage up">↑ 6.7%</span>
												                    <span class="progress">75%</span>
												                </div>
												            </div>
												        </a>

					        <!-- Card 5: Customer Satisfaction -->
							
							<a href="#" class="card">
																								            <h3>Total Rentals</h3>
																								            <div class="card-content">
																								                <span class="value">1,542</span>
																								                <div class="stats">
																								                    <span class="percentage up">↑ 8.3%</span>
																								                    <span class="progress">82%</span>
																								                </div>
																								            </div>
																								        </a>
					        <!-- Card 6: Total Expenses -->
					        <a href="#" class="card">
					            <h3>Total Expenses</h3>
					            <div class="card-content">
					                <span class="value">৳840,120.50</span>
					                <div class="stats">
					                    <span class="percentage up">↑ 4.3%</span>
					                    <span class="progress">60%</span>
					                </div>
					            </div>
					        </a>
							
							<a href="#" class="card">
											            <h3>Customer Satisfaction</h3>
											            <div class="card-content">
											                <span class="value">92%</span>
											                <div class="stats">
											                    <span class="percentage up">↑ 1.5%</span>
											                    <span class="progress">92%</span>
											                </div>
											            </div>
											        </a>
							
					    </div>
					</div>

					
			 <!-- Chart -->
			    <div class="charts-container">
			        <!-- Revenue Chart -->
			        <div class="chart-card">
			            <h3>Revenue (Weekly)</h3>
			            <div class="bar-chart">
			                <div class="bar" style="--height: 40%;"><span>Mon</span></div>
			                <div class="bar" style="--height: 60%;"><span>Tue</span></div>
			                <div class="bar" style="--height: 50%;"><span>Wed</span></div>
			                <div class="bar" style="--height: 80%;"><span>Thu</span></div>
			                <div class="bar" style="--height: 70%;"><span>Fri</span></div>
			                <div class="bar" style="--height: 90%;"><span>Sat</span></div>
			                <div class="bar" style="--height: 75%;"><span>Sun</span></div>
			            </div>
			        </div>
			    </div>



			</body>

			</html>