<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daily Rent</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
        }

        .container {
            background: white;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }

        h1 {
            text-align: center;
            font-size: 40px;
            color: #444;
        }

        p {
            text-align: left;
            margin-top: 10px;
            margin-left: 7%;
            font-size: 18px;
            color: #444343;
            font-weight: bold;
        }

        table {
            width: 90%;
            border-collapse: collapse;
            margin: 20px 0;
            margin-left: 7%;
        }

        table th,
        table td {
            border: 1px solid #ddd;
            text-align: left;
            padding: 14px;
        }

        table th {
            background-color: #33a54f;
            font-weight: bold;
            text-align: center;
        }

        .conditions h3 {
            margin-top: 20px;
            font-size: 1.2rem;
            margin-left: 9%;
        }

        .conditions ul {
            list-style-type: none;
            padding: 0;
        }

        .conditions ul li {
            margin-bottom: 12px;
            padding-left: 20px;
            text-indent: -20px;
            margin-left: 10%;
        }

        .conditions ul li::before {
            content: "•";
            color: #444;
            margin-right: 10px;
        }
    </style>
</head>

<body>
	
	<!-- Include the Navbar -->
		<jsp:include page="navbar.jsp" />

    <div class="container">
        <h1>Daily Rent (Based on Body Rent)</h1>
        
        <table>
            <thead>
                <p>Daily Rent (Dhaka & Outside Dhaka)</p>
                <tr>
                    <th>Type of Car</th>
                    <th>Model Year</th>
                    <th>Dhaka City</th>
                    <th>Outside Dhaka</th>
                    <th>CNG Per Km</th>
                    <th>Octane Per Km</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Toyota X / G Corolla</td>
                    <td>2000 - 2006</td>
                    <td>2500</td>
                    <td>3000</td>
                    <td>10</td>
                    <td>15</td>
                </tr>
                <tr>
                    <td>Toyota Allion / Premio</td>
                    <td>2000 - 2006</td>
                    <td>2500</td>
                    <td>3000</td>
                    <td>10</td>
                    <td>15</td>
                </tr>
                <tr>
                    <td>Toyota Axio</td>
                    <td>2008 - 2013</td>
                    <td>2500</td>
                    <td>3000</td>
                    <td>10</td>
                    <td>15</td>
                </tr>
                <tr>
                    <td>Toyota Allion / Premio</td>
                    <td>2008 - 2013</td>
                    <td>4000</td>
                    <td>4000</td>
                    <td>10</td>
                    <td>15</td>
                </tr>
                <tr>
                    <td>Toyota Noah</td>
                    <td>2003 - 2006</td>
                    <td>3000</td>
                    <td>3000</td>
                    <td>12</td>
                    <td>18</td>
                </tr>
                <tr>
                    <td>Toyota X Noah</td>
                    <td>2002 - 2006</td>
                    <td>3500</td>
                    <td>3500</td>
                    <td>12</td>
                    <td>18</td>
                </tr>
                <tr>
                    <td>Toyota X Noah</td>
                    <td>2008 - 2013</td>
                    <td>4000</td>
                    <td>4000</td>
                    <td>12</td>
                    <td>20</td>
                </tr>
                <tr>
                    <td>Toyota Hiace Microbus</td>
                    <td>2010 - 2016</td>
                    <td>4000</td>
                    <td>4000</td>
                    <td>12</td>
                    <td>20</td>
                </tr>
                <tr>
                    <td>Ambulance</td>
                    <td>Hiace</td>
                    <td>4000</td>
                    <td>Depend on Distance</td>
                    <td>12</td>
                    <td>20</td>
                </tr>
            </tbody>
        </table>
        <div class="conditions">
            <h3>Conditions:</h3>
            <ul>
                <li>All rates mentioned above in the BDT.</li>
                <li>The above-mentioned rates are excluding VAT & Taxes.</li>
                <li>Driver’s Duty time 10 Hours a day; after 10 hours’ overtime BDT 100 per hour will be charged.</li>
                <li>Driver’s lunch BDT 200 will have to be paid by the vehicle renter.</li>
                <li>If vehicle ran outside Dhaka the renter has to arrange food and accommodation for the driver.</li>
                <li>The renter cannot carry any illegal things in the vehicle or cannot use any illegal purpose.</li>
                <li>For any problem please communicate with the rent a car company.</li>
                <li>For any kind of unexpected situation or accident the rent a car will not provide any insurance
                    facility.</li>
            </ul>
        </div>
    </div>
	
	<!-- Include the Footer -->
	<jsp:include page="Footer.jsp" />
	
</body>

</html>