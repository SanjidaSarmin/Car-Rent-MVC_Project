<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>About</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

     /* Image layout */
     .experience-container {
      display: flex;
      justify-content: flex-start;
      align-items: flex-start;
      width: 100%;
      height: 100vh;
      position: relative;
      padding: 20px;
    }

    .experience-text {
      position: absolute;
      left: 50px;
      width: 90%;
      color: rgb(0, 0, 0);
      z-index: 1;
    }

    .experience-text h1 {
      text-align: center;
      font-size: 48px;
      margin: 30px;
      font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif
    }

    .experience-text .highlight {
      color: #1aa544;
      font-weight: bold;
    }

    .experience-text p {
      font-size: 16px;
      line-height: 1.4;
      text-align: justify;
      margin-bottom: 30px;
      font-family: "Georgia", serif;
      color: #242424;
      margin-left: 30px;
      margin-right: 30px;
    }

    .experience-image {
      width: 100%;
      height: 100%;
      background: url('/img/Car Layout.jpg') no-repeat center center/cover;
      position: absolute;
      top: 0;
      left: 0;
      z-index: 0;
    }

    .experience-container::before {
      content: "";
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background: rgba(0, 0, 0, 0.4);
      z-index: 0;
    }

    /* first part */
    .container {
      display: flex;
      width: 100%;
      height: 100vh;
    }

    .image-section {
      width: 70%;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .image-section img {
      max-width: 100%;
      max-height: 100%;
      object-fit: cover;
    }

    .text-section {
      width: 30%;
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 20px;
    }

    .text-box {
      max-height: 100%;
      overflow: hidden;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .text-section h1 {
      font-size: 26px;
      text-align:left;
      font-family: "Georgia", serif;
      margin-bottom: 20px;
    }

    .text-section p {
      font-size: 18px;
      line-height: 1.8;
      text-align: justify;
      font-family: "Georgia", serif;
    }
</style>
</head>

<body>

	<!-- Include the Navbar -->
			<jsp:include page="navbar.jsp" />
			
    <!-- image layout -->
  <div class="experience-container">
    <!-- Left: Text Section -->
    <div class="experience-text">
      <h1>WELCOME TO <span class="highlight">GARI LAGBE</span> RENT A CAR</h1>
      <p>
        Gari lagbe offers a convenient and flexible vehicle rental service in Dhaka, catering to diverse
        transportation needs.
        Gari lagbe Rental fleet is well-maintained, ensuring reliability and comfort for daily commutes, business trips,
        or special occasions.
        Customers can choose from economy cars, ideal for budget-conscious individuals, to more spacious mid-size
        vehicles for families or groups.
        For those seeking an elevated driving experience, Gari lagbe also offers high-end luxury vehicles. The
        rental process is streamlined,
        with easy online booking and transparent pricing. Gari lagbe’s hourly, daily, and monthly rates are
        competitive, making it an attractive
        option for extended stays or temporary needs. Whether you’re navigating the bustling streets of Dhaka or needing a reliable
        vehicle for a special event,
        Gari lagbe provides an ultimate transportation solution tailored to your needs. Gari lagbe provides unique opportunities with innovative technology
        in car rental services
        for executives and corporate travelers in Dhaka, Bangladesh. High-quality service specially tailored to suit
        your specific business needs
        with dedicated reservation centers that offer ‘just a call away’ convenience for anytime, anywhere in
        Bangladesh. We are offering a wide
        range of vehicles e.g., cars, microbus, noah, covered van, and vehicles for rent.
      </p>
    </div>

    <!-- Right: Image Section -->
    <div class="experience-image"></div>
  </div>

    <!-- first part -->
  <div class="container">
    <!-- Left: Image Section -->
    <div class="image-section">
      <img src="/img/hero-all-exotic.jpg" alt="exotic car">
    </div>

    <!-- Right: Text Section -->
    <div class="text-section">
      <div class="text-box">
        <h1>About Us</h1>
        <p>
            "Gari Lagbe" was created to make car rentals simple, affordable, and accessible in Dhaka.  
            Whether it’s a daily commute, a family trip, or a special event, we provide reliable vehicles tailored to your needs.  
            Our mission is to deliver a seamless travel experience with trust, comfort, and convenience at the heart of our service.  
            Join us today and discover hassle-free car rentals with "Gari Lagbe"!
          </p>
          
      </div>
    </div>
  </div>
  
  <!-- Include the Footer -->
  	<jsp:include page="Footer.jsp" />

</body>

</html>