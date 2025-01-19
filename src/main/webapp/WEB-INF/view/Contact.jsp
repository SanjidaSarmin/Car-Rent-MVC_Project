<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <style>
        .contact-header {
            text-align: center;
            margin-bottom: 40px;
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
            font-size: 40px;
        }

        .contact-container {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 10px;

        }

        .contact-box {
            background-color: #33ad58;
            padding: 20px;
            width: 45%;
            height: 320px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            box-sizing: border-box;

        }

        .contact-box h2 {
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
            color: #ffffff;
            font-size: 30px;
            margin-left: 10px;
        }

        .contact-box ul {
            list-style: none;
            padding: 0;
            line-height: 2;
            margin-left: 10px;
        }

        .contact-box li {
            display: flex;
            align-items: center;
            font-size: 20px;
            margin-bottom: 10px;
            border-bottom: .5px solid rgb(193, 233, 189);
            color: #ffffff;
        }

        .contact-box li:last-child {
            border-bottom: none;
        }

        .contact-box .icon {
            width: 20px;
            height: 20px;
            margin-right: 10px;
            vertical-align: middle;
        }

        .contact-image img {
            width: 420px;
            height: auto;
            border: 1px solid #ddd;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            margin-bottom: 20%;
        }

        
 /* Promo */
 .promo-banner {
      background-color: #006633; 
      padding: 20px 15%;
      text-align: center;
      border-radius: 10px;
      font-family: Arial, sans-serif;
      position: relative;
      margin: 20px auto;
      max-width: 800px;
      margin-top: 40px;
      font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    }

    .promo-banner h2 {
      font-size: 28px;
      font-weight: bold;
      margin-bottom: 10px;
      color: white;
    }

    .promo-banner p {
      font-size: 20px;
      margin-bottom: 20px;
      color: white;
    }

    .promo-banner .button {
      display: inline-block;
      padding: 10px 20px;
      border: 2px solid white;
      color: white;
      text-decoration: none;
      border-radius: 20px;
      font-size: 16px;
      font-weight: bold;
      transition: background-color 0.3s, color 0.3s;
    }

    .promo-banner .button:hover {
      background-color: white;
      color: #006633;
    }

    .promo-banner::before {
      content: '';
      position: absolute;
      top: 50%;
      left: 50%;
      width: 200px;
      height: 200px;
      background: rgba(255, 255, 255, 0.1);
      border-radius: 50%;
      transform: translate(-50%, -50%);
      z-index: -1;
    }

    </style>
</head>

<body>
	
	<!-- Include the Navbar -->
			<jsp:include page="navbar.jsp" />
			
    <h1 class="contact-header">Feel free to contact us 24/7</h1>

    <div class="contact-container">
        <div class="contact-box">
            <h2>Contact us</h2>
            <ul>
                <li>
                    <img src="/img/location.png" alt="Location" class="icon">
                    37/2, Agargaon, Shop no 307, Dhaka 1207
                </li>
                <li>
                    <img src="/img/telephone.png" alt="Phone" class="icon">
                    +88 0174230044
                </li>
                <li>
                    <img src="/img/mail.png" alt="Email" class="icon">
                     info@garilagberentacar.com
                </li>
                <li>
                    <img src="/img/link.png" alt="Website" class="icon">
                    www.garilagbe.com
                </li>
            </ul>
        </div>
        <div class="contact-image">
            <img src="/img/Car-2.png" alt="Car">
        </div>
    </div>


    <!-- Promo -->
  <div class="promo-banner">
    <h2>Car Rental and Much More</h2>
    <p>Gari Lagbe provides more than just traditional car rental. We're your global transportation solution.
    </p>
    <a href="#" class="button">Learn More</a>
  </div>

  <!-- Include the Footer -->
  	<jsp:include page="Footer.jsp" />
</body>

</html>