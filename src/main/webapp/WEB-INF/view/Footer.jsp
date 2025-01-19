<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Secret Recipe Coffee Culture</title>
    <style>
        .footer {
            background-color: #006633;
            color: white;
            font-family: Arial, sans-serif;
        }

        .footer-top {
            text-align: center;
            padding: 20px 0;
        }

        .footer-top img {
            max-width: 100%;
            height: auto;
        }

        .custom-footer {
            height: 80%;
            font-family: Arial, sans-serif;
            color: #fff;
        }

        .custom-footer-container {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            padding: 7%;
            background-color: #f1f0ed;
            color: #000;
        }

        .custom-footer-left,
        .custom-footer-center,
        .custom-footer-right {
            flex: 1;
            margin: 0 20px;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }

        .custom-logo {
            font-size: 24px;
            color: rgb(14, 161, 75);
        }

        .custom-description {
            margin: 10px 0;
        }

        .custom-read-more {
            color: #006633;
            text-decoration: none;
        }

        .custom-read-more:hover {
            text-decoration: underline;
        }

        .custom-opening-title,
        .custom-social-title {
            margin-top: 20px;
            font-size: 16px;
        }

        .custom-hotline-number {
            color:#006633;
        }


        .custom-horizontal-line {
            border: none;
            border-top: 2px solid rgb(13, 175, 75);
            margin: 10px 0;
            width: 20%;
        }

        .social-icon {
            width: 30px;
            height: 30px;
            margin-right: 10px;
            transition: transform 0.3s;
        }

        .social-icon:hover {
            transform: scale(1.1);
        }

        .custom-social-link {
            display: inline-block;
            margin-right: 10px;
        }


        .custom-social-link {
            display: inline-block;
            margin-right: 10px;
            color: #fff;
            text-decoration: none;
        }

        .custom-social-link:hover {
            text-decoration: underline;
        }

        .custom-footer-right {
            text-align: left;
        }

        .custom-footer-bottom {
            text-align: center;
            background-color: #006633;
            padding: 24px;
            font-size: 14px;
            font-family: Arial, sans-serif;

        }

        .custom-footer-text {
            margin: 0;
        }

        .custom-footer-nav .custom-footer-link {
            color: #fff;
            text-decoration: none;
            margin: 0 5px;
        }

        .custom-footer-nav .custom-footer-link:hover {
            text-decoration: underline;
        }

    </style>
</head>

<body>
    <div class="footer">
        <!-- Footer Top Section -->
        <div class="footer-top">
            <img src="/img/footer-img.png" alt="Footer Illustration" />
        </div>
        
        <!-- Footer Main Section -->
        <footer class="custom-footer">
            <div class="custom-footer-container">
                <!-- Left Section -->
                <div class="custom-footer-left">
                    <h2 class="custom-logo">
                        <img src="/img/logo.png" alt="Car Lagbe Logo">
                    </h2>
                    <p class="custom-description">
                        Car Lagbe is a digital platform to make your daily commuting better.
                    </p>
                    <a href="#" class="custom-read-more">Read More</a>
                </div>

                <!-- Center Section -->
                <div class="custom-footer-center">
                    <h3 class="custom-opening-title">Services</h3>
                    <hr class="custom-horizontal-line">
                    <p class="custom-opening-time">Car Rental</p>
                    <p class="custom-hotline">Hotline: <span class="custom-hotline-number">09613505085</span></p>
                </div>

                <!-- Right Section -->
                <div class="custom-footer-right">
                    <h3 class="custom-social-title">Follow Us</h3>
                    <hr class="custom-horizontal-line">
                    <div class="custom-social-icons">
                        <a href="#" class="custom-social-link">
                            <img src="/img/facebook.png" alt="Facebook" class="social-icon">
                        </a>
                        <a href="#" class="custom-social-link">
                            <img src="/img/instagram.png" alt="Instagram" class="social-icon">
                        </a>
                        <a href="#" class="custom-social-link">
                            <img src="/img/whatsapp.png" alt="WhatsApp" class="social-icon">
                        </a>
                        <a href="#" class="custom-social-link">
                            <img src="/img/x.png" alt="X Platform" class="social-icon">
                        </a>
                        <a href="#" class="custom-social-link">
                            <img src="/img/mail.png" alt="Email" class="social-icon">
                        </a>
                    </div>
                </div>
            </div>

            <!-- Bottom Section -->
            <div class="custom-footer-bottom">
                <p class="custom-footer-text">
                    Copyright © 2025 by Pepperoni, Fair Group. All Rights Reserved.
                </p>
                <nav class="custom-footer-nav">
                    <a href="#" class="custom-footer-link">About</a> |
                    <a href="#" class="custom-footer-link">Online Policy</a> |
                    <a href="#" class="custom-footer-link">FAQ</a> |
                    <a href="#" class="custom-footer-link">Career</a>
                </nav>
            </div>
        </footer>
    </div>
</body>


</html>