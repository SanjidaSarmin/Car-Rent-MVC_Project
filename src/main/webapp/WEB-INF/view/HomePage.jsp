<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Home Page</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f8f9fa;
    }

    /* //   First Image */
    .pos-container {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 2rem;
      font-family: Arial, sans-serif;
      background-color: #ffffff;
    }

    .pos-content {
      max-width: 50%;
      margin-left: 2%;

    }

    .pos-content h1 {
      font-size: 40px;
      line-height: 1.2;
      margin: 0 0 1rem;
      font-weight: bolder;
      margin-bottom: 35px;
      font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif
    }

    .pos-content .highlight {
      color: #1aa544;
      font-weight: bold;
    }

    .pos-content h3 {
      font-size: 30px;
      color: #666666;
      margin: 0 0 1.5rem;
      font-family: Verdana, Geneva, Tahoma, sans-serif;
    }

    .buttons {
      display: flex;
      gap: 1rem;
    }

    .primary-btn {
      background-color: #1aa544;
      color: white;
      border: none;
      padding: 0.8rem 1.5rem;
      font-size: 1rem;
      border-radius: 4px;
      cursor: pointer;
    }

    .primary-btn:hover {
      background-color: #10752f;
    }

    .link-btn {
      font-size: 16px;
      color: #007BFF;
      text-decoration: none;
      padding: 0.8rem 1.5rem;
      display: inline-block;
      font-weight: bold;

    }

    .link-btn:hover {
      color: #34aa25;
      transform: scale(1.1);
      font-family: 'Times New Roman', Times, serif;
      font-size: 18px;
    }

    .pos-image {
      max-width: 45%;
    }

    .pos-image img {
      max-width: 100%;
      border-radius: 8px;

    }

    /* - -------Booking-------  */

    .container {
      display: flex;
      align-items: flex-start;
      padding: 20px;
    }

    .left-panel {
      background-color: #2b964b;
      color: #fff;
      padding: 20px;
      margin-left: 25px;
      border-radius: 4px;
      flex: 1;
      height: 500px;
      font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
    }

    .left-panel h2 {
      margin-bottom: 20px;
      color: #ffffff;
    }

    .left-panel form {
      display: flex;
      flex-direction: column;
      gap: 15px;

    }

    .left-panel input {
      padding: 12px;
      border: none;
      border-radius: 2px;
      background-color: #f1fcf4;

    }

    .left-panel .date-time {
      display: flex;
      gap: 10px;
    }

    .left-panel button {
      background-color: #236633;
      color: #fff;
      padding: 12px;
      border: none;
      border-radius: 8px;
      cursor: pointer;
    }

    .left-panel button:hover {
      background-color: #14411f;
      color: #fff;
      transform: scale(1.05);
    }

    .right-panel {
      background-color: #fff;
      padding: 20px;
      border-radius: 0 4px 4px 0;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
      flex: 2;
      height: 400px;
      margin-top: 5%;
    }

    .right-panel h2 {
      margin-bottom: 6%;
      text-align: center;
      color: #272727;
      font-family: Verdana, Geneva, Tahoma, sans-serif;
    }

    .step-description {
      font-size: 16px;
      font-weight: bold;
      color: #333;
      margin-top: 10px;
      text-align: center;
      font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
      padding: 5px 10px;
      border-radius: 4px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }


    .right-panel .steps {
      display: flex;
      justify-content: space-around;
      margin-bottom: 20px;
    }

    .right-panel .steps div {
      text-align: center;
    }

    .right-panel .steps img {
      max-width: 50px;
      margin-bottom: 10px;
    }

    .right-panel button {
      background-color: #203f61;
      color: #fff;
      padding: 20px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      margin-top: 6%;
      margin-left: 40%;
      font-size: 15px;
    }

    .right-panel button:hover {
      background-color: #1d3146;
      color: #fff;
      transform: scale(1.05);
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

     /* Feature */
     .features {
      display: flex;
      justify-content: space-between;

    }

    .feature {
      text-align: center;
      flex: 1;
      padding: 20px;
    }

    .feature img {
      width: 20%;
      height: auto;
      margin-bottom: 15px;
    }

    .feature h3 {
      font-size: 1.5rem;
      font-weight: bold;
      margin: 10px 10px;
      font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    }

    .feature p {
      font-size: 1rem;
      color: #555;
      margin: 10px 0 20px;
      font-weight: 100;
    }

    .feature .button {
      display: inline-block;
      padding: 10px 20px;
      background-color: #ffcc00;
      /* Yellow background */
      color: #000;
      /* Black text */
      text-decoration: none;
      font-weight: bold;
      border-radius: 5px;
      transition: background-color 0.3s ease;
    }

    .feature .button:hover {
      background-color: #ffb900;
      /* Slightly darker yellow on hover */
    }

    /* Car View */

    .fleet-section {
      text-align: center;
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 20px;
      background-color: #f4f4f4;
    }

    .fleet-section h1 {
      font-size: 2.5rem;
      margin-bottom: 20px;
      font-family: Verdana, Geneva, Tahoma, sans-serif;
    }

    .carousel-container {
      position: relative;
      margin: 0 auto;
      width: 80%;
      font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    }

    .carousel-track-container {
      overflow: hidden;
      width: 100%;
    }

    .carousel-track {
      display: flex;
      transition: transform 0.5s ease-in-out;
    }

    .vehicle {
      flex: 0 0 20%;
      text-align: center;
    }

    .vehicle img {
      width: 370px;
      height: auto;
      display: block;
      margin: 0 auto;
    }

    .vehicle p a {
      color: #006400;
      text-decoration: none;
      font-weight: bold;
    }

    .vehicle p a:hover {
      text-decoration: underline;
    }

    .carousel-btn {
      background-color: #fff;
      border: 1px solid #ccc;
      border-radius: 50%;
      width: 40px;
      height: 40px;
      display: flex;
      align-items: center;
      justify-content: center;
      cursor: pointer;
      font-size: 16px;
      font-weight: bold;
      z-index: 10;
      position: absolute;
      top: 40%;
      transform: translateY(-50%);
    }

    .left-btn {
      left: 3%;
    }

    .right-btn {
      right: 3%;
    }

    .controls {
      margin-top: 30px;
      position: relative;
    }

    .view-all-btn {
      background-color:#006633; 
      color: #fff;
      border: none;
      padding: 10px 20px;
      font-size: 1.2rem;
      border-radius: 5px;
      cursor: pointer;
    }

    .view-all-btn:hover {
      background-color: rgb(12, 65, 12); 
    }


    .carousel-btn {
      bottom: -40px;
      transform: none;
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
      /* Semi-transparent background for the "E" design */
      border-radius: 50%;
      transform: translate(-50%, -50%);
      z-index: -1;
      /* Position behind the text */
    }


    /* services */

    .services-section {
    display: flex;
    height: 90vh; 
    width: 100%; 
    font-family: Arial, sans-serif;
    color: #fff;
    background-color: #504f4f;
    position: relative;
    overflow: hidden;
    box-sizing: border-box; 
}

.content1 {
    position: relative;
    z-index: 2;
    width: 50%; 
    padding: 50px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    background: rgba(58, 58, 58, 0.6);
    box-sizing: border-box; 
    overflow: hidden; /* Ensure content does not overflow */
}

.content1 h1 {
    font-size: 2.5rem;
    margin: 0; 
}

.subtitle {
    font-size: 1.2rem;
    margin-bottom: 20px;
    color: #bbb;
    word-wrap: break-word; /* Ensure long text wraps */
}

.description {
    font-size: 1rem;
    line-height: 1.4; /* Slightly increased for better readability */
    margin-bottom: 20px; /* Add spacing */
    word-wrap: break-word; /* Ensure long text wraps */
}

.services {
    display: grid;
    grid-template-columns: 1fr;
    gap: 15px; /* Add more spacing between services */
}

.service {
    display: flex;
    align-items: flex-start;
    gap: 10px;
}

.service .icon {
    width: 30px;
    height: 30px;
    background: #666;
    border-radius: 8px;
    flex-shrink: 0; 
}
.service h3 {
    font-size: 1.2rem;
    margin: 0; /* Remove margin */
}

.image-section {
    flex: 1;
    background: url('/img/luxury-car-front.jpg') center/cover no-repeat;
    position: relative; /* Make sure the overlay works */
}

.image-section::after {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.5); /* Dark overlay for contrast */
}

@media (max-width: 768px) {
    .services-section {
        flex-direction: column;
    }

    .content {
        width: 100%; /* Adjust width for smaller screens */
        padding: 20px; /* Reduce padding on smaller screens */
    }

    .services {
        grid-template-columns: 1fr; /* Single-column layout for smaller screens */
    }
}


    /* FAQ Question */

    .faq-container {
      max-width: 900px;
      margin: 20px auto;
      padding: 20px;
      background-color: #fff;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
      margin-top: 5%;
    }

    h2 {
      text-align: center;
      font-size: 36px;
      margin-bottom: 20px;
      color: #333;
    }

    .faq-item {
      border-bottom: 1px solid #e0e0e0;
      padding: 15px 0;
      margin-left: 10%;
      margin-right: 10%;
    }

    .faq-item:last-child {
      border-bottom: none;
    }

    .faq-question {
      display: flex;
      align-items: center;
      font-size: 18px;
      font-weight: bold;
      cursor: pointer;
      color: #444;
      font-weight: 500;
    }

    .faq-question:hover {
      color: #1f8630;
    }

    .toggle-icon {
      margin-right: 10px;
      font-size: 20px;
      color: #1f8630;
      transition: transform 0.3s ease;
    }


    .faq-answer {
      display: none;
      margin-top: 10px;
      font-size: 16px;
      color: #272727;
      line-height: 1.6;
      padding-left: 30px;
      font-weight: 100;
    }

    .faq-answer ul {
      margin: 10px 0;
      padding-left: 20px;
    }

    .faq-answer li {
      margin-bottom: 5px;
      list-style-type: disc;
    }


   
  </style>
</head>
<body>

	<!-- Include the Navbar -->
		<jsp:include page="navbar.jsp" />
  <!-- First Image -->

  <div class="pos-container">
    <div class="pos-content">
      <h3><span class="highlight">Rent</span> a Car</h3>
      <h1>Looking for a vehicle? You’re at the right place.</h1>
      <div class="buttons">
        <button class="primary-btn">Get started</button>
        <a href="#" class="link-btn">Car Details →</a>
      </div>
    </div>
    <div class="pos-image">
      <img src="/img/FirstPicture.jpg" alt="POS example" />
    </div>
  </div>

  <!-- -------Booking------- -->
  <div class="container">
    <div class="left-panel">
      <h2>Make your trip</h2>
      <form>
        <label for="pickup-location">Pick-up Location</label>
        <input type="text" id="pickup-location" placeholder="City, Airport, Station, etc" />

        <label for="dropoff-location">Drop-off Location</label>
        <input type="text" id="dropoff-location" placeholder="City, Airport, Station, etc" />

        <div class="date-time">
          <div>
            <label for="pickup-date">Pick-up Date</label>
            <input type="date" id="pickup-date" />
          </div>
          <div>
            <label for="dropoff-date">Drop-off Date</label>
            <input type="date" id="dropoff-date" />
          </div>
        </div>

        <label for="pickup-time">Pick-up Time</label>
        <input type="time" id="pickup-time" />

        <button type="submit">Rent A Car Now</button>
      </form>
    </div>

    <div class="right-panel">
      <h2>Better Way to Rent Your Perfect Cars</h2>
      <div class="steps">
        <div>
          <img src="/img/route.png" alt="Pickup Icon" />
          <p class="step-description">Choose Your Pickup Location</p>
        </div>
        <div>
          <img src="/img/handshake.png" alt="Best Deal Icon" />
          <p class="step-description">Select the Best Deal</p>
        </div>
        <div>
          <img src="/img/vehicle.png" alt="Rental Car Icon" />
          <p class="step-description">Reserve Your Rental Car</p>
        </div>
      </div>
      <button>Reserve Your Perfect Car</button>
    </div>
  </div>


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

<!-- Feature -->
<div class="features">
  <div class="feature">
    <img src="/img/discount.svg" alt="discount Image" class="feature-image">
    <h3>Discounts and benefits</h3>
    <p>Become a privilege member</p>
    <a href="#" class="button">Discover our loyalty program</a>
  </div>
  <div class="feature">
    <img src="/img/periodic.svg" alt="periodic Image" class="feature-image">
    <h3>Daily, weekly or monthly</h3>
    <p>Rent a car as long as you need</p>
    <a href="#" class="button">Book now</a>
  </div>
  <div class="feature">
    <img src="/img/online-checkin.svg" alt="online-checkin Image" class="feature-image">
    <h3>Online check-in</h3>
    <p>Get on the road as fast as possible</p>
    <a href="#" class="button">Check in now</a>
  </div>
</div>

  <!-- Car View -->
  <div class="fleet-section">
    <h1>Meet the Fleet</h1>
    <div class="carousel-container">
      <!-- Left Button -->
      <button class="carousel-btn left-btn" id="leftButton">&#x3c;</button>

      <!-- Carousel Track -->
      <div class="carousel-track-container">
        <div class="carousel-track">
          <!-- Images (Repeating by adding clones) -->
          <div class="vehicle">
            <img src="/img/luxury-car.png" alt="Luxury Car">
            <p><a href="#">Luxury Car</a></p>
          </div>
          <div class="vehicle">
            <img src="/img/suv-santa.png" alt="suv-santa Car">
            <p><a href="#">Suv-Santa Car</a></p>
          </div>
          <div class="vehicle">
            <img src="/img/compact-nissan.png" alt="compact-nissan">
            <p><a href="#">Compact Nissan</a></p>
          </div>
          <div class="vehicle">
            <img src="/img/economy.png" alt="economy Car">
            <p><a href="#">Economy Car</a></p>
          </div>
          <div class="vehicle">
            <img src="/img/zoe-hp.png" alt="zoe-hp Car">
            <p><a href="#">Zoe-hp Car</a></p>
          </div>
          <div class="vehicle">
            <img src="/img/noah.png" alt="noah">
            <p><a href="#">Noah Car</a></p>
          </div>

          <div class="vehicle">
            <img src="/img/Hiace.png" alt="Hiace Car">
            <p><a href="#">Micro Bus</a></p>
          </div>
        </div>
      </div>

      <!-- Right Button -->
      <button class="carousel-btn right-btn" onclick="scrollRight()">&#x3e;</button>
    </div>

    <!-- Controls -->
    <div class="controls">
      <button class="view-all-btn">View All Vehicles</button>
    </div>
  </div>
  </div>

 <!-- Promo -->
  <div class="promo-banner">
    <h2>Car Rental and Much More</h2>
    <p>Gari Lagbe provides more than just traditional car rental. We're your global transportation solution.
    </p>
    <a href="#" class="button">Learn More</a>
  </div>

<!-- Services -->
<div class="services-section">
  <div class="content1">
      <h1>Our Services</h1>
      <p class="subtitle">Looking to Save More on Your rental car?</p>
      <p class="description">
   With flexible rental options, seamless booking, and exceptional customer service, we're your trusted partner for unforgettable journeys.
      </p>
      <div class="services">
          <div class="service">
              <div class="icon"></div>
              <div>
                  <h3>Support 24/7</h3>
                  <p>Our dedicated team is available 24/7 to ensure your car rental experience is smooth and stress-free.</p>
              </div>
          </div>
          <div class="service">
              <div class="icon"></div>
              <div>
                  <h3>Money Back Guarantee</h3>
                  <p>Our money-back guarantee ensures your satisfaction, providing peace of mind for every journey you embark on.</p>
              </div>
          </div>
          <div class="service">
              <div class="icon"></div>
              <div>
                  <h3>Most Affordable Deals</h3>
                  <p>Unlock unbeatable savings on top-tier rentals with EuroElite Cars' most affordable deals.</p>
              </div>
          </div>
      </div>
  </div>
  <div class="image-section"></div>
</div>



  <!-- FAQ Question -->
  <div class="faq-container">
    <h2>Frequently Asked Questions</h2>

    <div class="faq-item">
      <div class="faq-question">
        <span class="toggle-icon">+</span>
        <span>What is the Minimum Booking time?</span>
      </div>
      <div class="faq-answer">
        120mins required to Start the service
      </div>
    </div>

    <div class="faq-item">
      <div class="faq-question">
        <span class="toggle-icon">+</span>
        <span>Is it possible to choose a specific car model?</span>
      </div>
      <div class="faq-answer">
        No, based on Car Availability your car will select automatically.:
        (i.e. Toyota Axio and/or equivalent and/or 2005 model onwards, etc.)
      </div>
    </div>

    <div class="faq-item">
      <div class="faq-question">
        <span class="toggle-icon">+</span>
        <span>Is it possible to have any special car model requirements?</span>
      </div>
      <div class="faq-answer">
        You can add an addition in case you are looking for a specific model car.
        In that case, Sheba.xyz car rental service will make an attempt to get a
        specific car based on your requirements. However, the service charge may also be adjusted
        depending on your requirement
        (i.e.- Car Type, model, and service availability).
      </div>
    </div>

    <div class="faq-item">
      <div class="faq-question">
        <span class="toggle-icon">+</span>
        <span>Is the service price fixed?</span>
      </div>
      <div class="faq-answer">
        Yes. However, it may be adjusted in case of your requirement based on Car Type,
        Model, and Service Availability etc.
      </div>
    </div>

    <div class="faq-item">
      <div class="faq-question">
        <span class="toggle-icon">+</span>
        <span>What is included in this service?</span>
      </div>
      <div class="faq-answer">
        Service Charges, fuel costs, and driver allowance are all-inclusive.
      </div>
    </div>

    <div class="faq-item">
      <div class="faq-question">
        <span class="toggle-icon">+</span>
        <span>What is excluded from this Inside City Service?</span>
      </div>
      <div class="faq-answer">
        <ul>
          <li>Half-Day Package Includes 4 Hours duty Inside the metropolitan city, a maximum of 40KM running.</li>
          <li>Full-Day Package Includes: 10 Hours duty Inside metropolitan city and Max 80KM running
          </li>
          <li> After that Extra Hour and Extra Bill Charge will be applicables</li>
        </ul>
      </div>
    </div>

    <div class="faq-item">
      <div class="faq-question">
        <span class="toggle-icon">+</span>
        <span>What is excluded from this Outside City Service?</span>
      </div>
      <div class="faq-answer">
        <strong>For One Way:</strong>
        <ul>
          <li>Bill will be calculated based on the Pick-point and Drop-point.</li>
          <li>If you want to go to any other location from the given drop-point, extra KM will be applied.</li>
          <li>In that case, the extra bill will be calculated from Drop-point to the new location
            (the location where you want to be dropped).</li>
          <li>Per KM charge for the new location will be BDT 28.</li>
        </ul>
        <strong>For Round Trip:</strong>
        <ul>
          <li>Car will drop the customer at Drop-point, stay there for 2 hours, and then a round-trip to Pick-up point.
          </li>
          <li>If you want to stay more than 2 hours, a waiting charge will be applied.</li>
          <li>If you want to go to any other places, extra KM charge will be applied.</li>
          <li>If you want to have a night-stay, a driver allowance of BDT 1000 will be charged if you do
            not provide accommodation and food for the driver.</li>
        </ul>
      </div>
    </div>

    <div class="faq-item">
      <div class="faq-question">
        <span class="toggle-icon">+</span>
        <span>Can I choose any route to reach my destination for outside city car rental?</span>
      </div>
      <div class="faq-answer">
        Yes, you can choose your preferred route for outside city travel,
        provided it aligns with service policies.
      </div>
    </div>
    <div class="faq-item">
      <div class="faq-question">
        <span class="toggle-icon">+</span>
        <span>What is extra KM and the extra area charge?</span>
      </div>
      <div class="faq-answer">
        <ul>
          <li>Sedan Car Extra Charge- BDT 300/hour</li>
          <li>Hiace & Noah Extra Charge- BDT 400/hour</li>
          <li>Extra KM Charge- BDT 28 per/KM</li>
        </ul>
      </div>
    </div>
  </div>

  <!-- Include the Footer -->
  	<jsp:include page="Footer.jsp" />

  <script src="Script.js"></script>
</body>

</html>