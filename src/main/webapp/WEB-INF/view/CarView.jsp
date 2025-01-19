<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Car Selection</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f4f4f4;
      color: #333;
    }

    .container {
      width: 90%;
      margin: 0 auto;
      text-align: center;
    }

    h1 {
      margin-bottom: 20px;
    }

    .filters button {
      margin: 5px;
      padding: 10px 15px;
      border: 1px solid #ccc;
      background-color: white;
      cursor: pointer;
      border-radius: 5px;
      transition: all 0.3s;
    }

    .filters button:hover {
      background-color: #ddd;
    }

    .card-container {
      display: flex;
      flex-wrap: wrap;
      gap: 20px;
      justify-content: center;
    }

    .card {
      background-color: white;
      border: 1px solid #ddd;
      border-radius: 10px;
      width: 300px;
      padding: 20px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
      transition: border 0.3s ease, transform 0.3s ease;
      position: relative;
    }

    .card img {
      width: 100%;
      height: auto;
      display: block;
      margin: 0 auto;
    }

    .card-content {
      text-align: left;
      margin-top: 10px;
    }

    .card h3 {
      margin: 10px 0;
      font-size: 1.2em;
      font-weight: bold;
    }

    .card p {
      margin: 5px 0;
      color: #666;
      font-size: 13px;
    }

    .icons {
      display: flex;
      gap: 5px;
      font-size: 0.9em;
      align-items: center;
      margin: 10px 0;
    }

    .icons span {
      display: flex;
      align-items: center;
      gap: 5px;
    }

    .icons img {
      width: 16px;
      /* Adjust width */
      height: auto;
      /* Maintain aspect ratio */
      display: inline-block;
      vertical-align: middle;
    }



    .badge {
      position: absolute;
      top: 10px;
      left: 10px;
      background-color: #28a745;
      color: white;
      padding: 5px 10px;
      border-radius: 5px;
      font-size: 0.8em;
    }

    .card:hover {
      border: 3px solid #0f1316;
      transform: scale(1.03);
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
      color: #1d1d1d;
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
      color: #27693d;
      font-weight: 500;
    }

    .faq-question:hover {
      color:#1b6433;
    }

    .toggle-icon {
      margin-right: 10px;
      font-size: 20px;
      color: #1f8630;
      transition: transform 0.3s ease;
    }


	 

	.faq-item.active .faq-answer {
	  display: block;
	}
	    .faq-answer {
	      display: none;
	      margin-top: 10px;
	      font-size: 16px;
	      color: #272727;
	      line-height: 1.6;
	      padding-left: 30px;
	      font-weight: 100;
	      transition: max-height 0.3s ease-out;
	      overflow: hidden;
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
			
	<div class="container">
	  <h1>WHICH CAR DO YOU WANT TO DRIVE?</h1>
	  <div class="filters">
	    <button>Sort by</button>
	    <button>Vehicle type</button>
	    <button>Gearshift</button>
	    <button>Passengers</button>
	    <button>Driver's age</button>
	  </div>
	  
	  <!-- Card 1 -->
	  <div class="card-container" id="card-container">
	    <div class="card">
	      <img src="/img/gac-.png" alt="GAC GA4">
	      <div class="card-content">
	        <h3>GAC GA4 or similar</h3>
	        <p>Standard Sedan Automatic</p>
	        <div class="icons">
	          <span><img src="/img/user.png" alt="User Icon"> 5 people</span>
	          <span><img src="/img/bag.png" alt="Baggage Icon"> 4 bags</span>
	          <span><img src="/img/processing.png" alt="Gear Icon"> Automatic</span>
	        </div>
	        <p><strong>$23.18/day</strong> | $92.73 total</p>
	        <p>✔ Unlimited kilometers available</p>
	        <span class="badge">Best Deal</span>
	      </div>
	    </div>
		
	    <!-- Card 2 -->
	    <div class="card">
	      <img src="/img/suv-red-2023.png" alt="GAC EMPOW GDI">
	      <div class="card-content">
	        <h3>GAC GS3 200T (Turbo) 6-Speed or similar</h3>
	        <p>Compact SUV Automatic</p>
	        <div class="icons">
	          <span><img src="/img/user.png" alt="User Icon"> 5 people</span>
	          <span><img src="/img/bag.png" alt="Bag Icon"> 4 bags</span>
	          <span><img src="/img/processing.png" alt="Gear Icon"> Automatic</span>
	        </div>
	        <p class="price">$32.01/day | $128.06 total</p>
	        <p>✔ Unlimited kilometers available</p>
	        <span class="badge">Good Choice</span>
	      </div>
	    </div>
		
	    <!-- Card 3 -->
	    <div class="card">
	      <img src="/img/gac-empow.png" alt="GAC GS3 200T">
	      <div class="card-content">
	        <h3>GAC EMPOW GDI (Turbo) 7-Speed or similar</h3>
	        <p>Compact Sedan Automatic</p>
	        <div class="icons">
	          <span><img src="/img/user.png" alt="User Icon"> 5 people</span>
	          <span><img src="/img/bag.png" alt="Bag Icon"> 4 bags</span>
	          <span><img src="/img/processing.png" alt="Gear Icon"> Automatic</span>
	        </div>
	        <p class="price">$28.40/day | $113.60 total</p>
	        <p>✔ Unlimited kilometers available</p>
	        <span class="badge">Sports Sedan</span>
	      </div>
	    </div>
		
	    <!-- Card 4 -->
	    <div class="card">
	      <img src="/img/emzoom-blue-2024.png" alt="GAC Emzoom">
	      <div class="card-content">
	        <h3>GAC Emzoom GDI (Turbo) 7-Speed WDCT or similar</h3>
	        <p>Economy SUV Automatic</p>
	        <div class="icons">
	          <span><img src="/img/user.png" alt="User Icon"> 5 people</span>
	          <span><img src="/img/bag.png" alt="Bag Icon"> 4 bags</span>
	          <span><img src="/img/processing.png" alt="Gear Icon"> Automatic</span>
	        </div>
	        <p class="price">$34.36/day | $137.44 total</p>
	        <p>✔ Unlimited kilometers available</p>
	        <span class="badge">Good Choice</span>
	      </div>
	    </div>
		
	    <!-- Card 5 -->
	    <div class="card">
	      <img src="/img/emkoo-suv-blue-2023.png" alt="GAC Emkoo">
	      <div class="card-content">
	        <h3>GAC Emkoo GDI (Turbo) 7-Speed WDCT or similar</h3>
	        <p>Compact SUV Automatic</p>
	        <div class="icons">
	          <span><img src="/img/user.png" alt="User Icon"> 5 people</span>
	          <span><img src="/img/bag.png" alt="Bag Icon"> 4 bags</span>
	          <span><img src="/img/processing.png" alt="Gear Icon"> Automatic</span>
	        </div>
	        <p class="price">$36.77/day | $147.10 total</p>
	        <p>✔ Unlimited kilometers available</p>
	        <span class="badge">Good Choice</span>
	      </div>
	    </div>
		
	    <!-- Card 6 -->
	    <div class="card">
	      <img src="/img/vw-golf-gti-5d-grey-2020.png" alt="VW Golf GTI">
	      <div class="card-content">
	        <h3>VW Golf GTi or similar</h3>
	        <p>Midsize Sedan Automatic</p>
	        <div class="icons">
	          <span><img src="/img/user.png" alt="User Icon"> 5 people</span>
	          <span><img src="/img/bag.png" alt="Bag Icon"> 4 bags</span>
	          <span><img src="/img/processing.png" alt="Gear Icon"> Automatic</span>
	        </div>
	        <p class="price">$47.91/day | $191.62 total</p>
	        <p>✔ Unlimited kilometers available</p>
	        <span class="badge">UAE Special</span>
	      </div>
	    </div>
		
	    <!-- Card 7 -->
	    <div class="card">
	      <img src="/img/mb-silver-2018.png" alt="Mercedes-Benz A-Class">
	      <div class="card-content">
	        <h3>Mercedes-Benz A-Class Sedan or similar</h3>
	        <p>Standard Sedan Automatic</p>
	        <div class="icons">
	          <span><img src="/img/user.png" alt="User Icon"> 5 people</span>
	          <span><img src="/img/bag.png" alt="Bag Icon"> 4 bags</span>
	          <span><img src="/img/processing.png" alt="Gear Icon"> Automatic</span>
	        </div>
	        <p class="price">$49.73/day | $198.92 total</p>
	        <p>✔ Unlimited kilometers available</p>
	        <span class="badge">Hot Hatchback</span>
	      </div>
	    </div>
		
	    <!-- Card 8 -->
	    <div class="card">
	      <img src="/img/gac-gs8-suv-green-2022.png" alt="GAC GS8">
	      <div class="card-content">
	        <h3>GAC GS8 320T (Turbo) i4x4 8-Speed or similar</h3>
	        <p>Full-size SUV Automatic</p>
	        <div class="icons">
	          <span><img src="/img/user.png" alt="User Icon"> 7 people</span>
	          <span><img src="/img/bag.png" alt="Bag Icon"> 6 bags</span>
	          <span><img src="/img/processing.png" alt="Gear Icon"> Automatic</span>
	        </div>
	        <p class="price">$53.09/day | $212.37 total</p>
	        <p>✔ Unlimited kilometers available</p>
	        <span class="badge">Grand SUV Comfort</span>
	      </div>
	    </div>
		
	    <!-- Card 9 -->
	    <div class="card">
	      <img src="/img/gac-gn8-van-black-2023.png" alt="GAC GN8">
	      <div class="card-content">
	        <h3>GAC GN8 320T (Turbo) 6-Speed or similar</h3>
	        <p>Standard Multiseater Automatic</p>
	        <div class="icons">
	          <span><img src="/img/user.png" alt="User Icon"> 7 people</span>
	          <span><img src="/img/bag.png" alt="Bag Icon"> 6 bags</span>
	          <span><img src="/img/processing.png" alt="Gear Icon"> Automatic</span>
	        </div>
	        <p class="price">$54.39/day | $217.55 total</p>
	        <p>✔ Unlimited kilometers available</p>
	        <span class="badge">Grand Comfort</span>
	      </div>
	    </div>
		
	    <!-- Card 10 -->
	    <div class="card">
	      <img src="/img/alfa-romeo-tonale-suv-green-2022.png" alt="Alfa Romeo Tonale">
	      <div class="card-content">
	        <h3>Alfa Romeo Tonale or similar</h3>
	        <p>Standard SUV Automatic</p>
	        <div class="icons">
	          <span><img src="/img/user.png" alt="User Icon"> 5 people</span>
	          <span><img src="/img/bag.png" alt="Bag Icon"> 4 bags</span>
	          <span><img src="/img/processing.png" alt="Gear Icon"> Automatic</span>
	        </div>
	        <p class="price">$55.10/day | $220.38 total</p>
	        <p>✔ Unlimited kilometers available</p>
	        <span class="badge">Premium Sports SUV</span>
	      </div>
	    </div>
		
	    <!-- Card 11 -->
	    <div class="card">
	      <img src="/img/mb-glb-suv-silver-2021.png" alt="Mercedes-Benz GLB 250">
	      <div class="card-content">
	        <h3>Mercedes-Benz GLB 250 4MATIC or similar</h3>
	        <p>Standard Elite SUV Automatic</p>
	        <div class="icons">
	          <span><img src="/img/user.png" alt="User Icon"> 7 people</span>
	          <span><img src="/img/bag.png" alt="Bag Icon"> 4 bags</span>
	          <span><img src="/img/processing.png" alt="Gear Icon"> Automatic</span>
	        </div>
	        <p class="price">$64.08/day | $256.34 total</p>
	        <p>✔ Unlimited kilometers available</p>
	      </div>
	    </div>
		
	    <!-- Card 12 -->
	    <div class="card">
	      <img src="/img/mb-glc63s-coupe-4d-weiss-2019.png" alt="Mercedes-Benz GLC">
	      <div class="card-content">
	        <h3>Mercedes-Benz GLC 4MATIC Coupé or similar</h3>
	        <p>Premium SUV Automatic</p>
	        <div class="icons">
	          <span><img src="/img/user.png" alt="User Icon"> 5 people</span>
	          <span><img src="/img/bag.png" alt="Bag Icon"> 4 bags</span>
	          <span><img src="/img/processing.png" alt="Gear Icon"> Automatic</span>
	        </div>
	        <p class="price">$119.91/day | $479.66 total</p>
	        <p>✔ Unlimited kilometers available</p>
	        <span class="badge">Luxury Crossover</span>
	      </div>
	    </div>
		
	    <!-- Card 13 -->
	    <div class="card">
	      <img src="/img/mb-gle-5d-schwarz-2019.png" alt="Mercedes-Benz GLE 450">
	      <div class="card-content">
	        <h3>Mercedes-Benz GLE 450 4MATIC or similar</h3>
	        <p>Luxury SUV Automatic</p>
	        <div class="icons">
	          <span><img src="/img/user.png" alt="User Icon"> 7 people</span>
	          <span><img src="/img/bag.png" alt="Bag Icon"> 5 bags</span>
	          <span><img src="/img/processing.png" alt="Gear Icon"> Automatic</span>
	        </div>
	        <p class="price">$134.81/day | $539.25 total</p>
	        <p>✔ Unlimited kilometers available</p>
	      </div>
	    </div>
		
	    <!-- Card 14 -->
	    <div class="card">
	      <img src="/img/nissan-patrol-suv-white-2021.png" alt="Nissan Patrol SE">
	      <div class="card-content">
	        <h3>Nissan Patrol SE Platinum City 4x4 or similar</h3>
	        <p>Full-size Elite SUV Automatic</p>
	        <div class="icons">
	          <span><img src="/img/user.png" alt="User Icon"> 8 people</span>
	          <span><img src="/img/bag.png" alt="Bag Icon"> 5 bags</span>
	          <span><img src="/img/processing.png" alt="Gear Icon"> Automatic</span>
	        </div>
	        <p class="price">$156.24/day | $624.97 total</p>
	        <p>✔ Unlimited kilometers available</p>
	      </div>
	    </div>
	  
		<!-- Card 15 -->
		<div class="card">
		  <img src="/img/mb-eqe-4d-white-2022.png" alt="Mercedes-Benz EQE 350+">
		  <div class="card-content">
		    <h3>Mercedes-Benz EQE 350+ (100% Electric) or similar</h3>
		    <p>Luxury Sedan Automatic</p>
		    <div class="icons">
		      <span><img src="/img/user.png" alt="User Icon"> 5 people</span>
		      <span><img src="/img/bag.png" alt="Bag Icon"> 4 bags</span>
		      <span><img src="/img/processing.png" alt="Gear Icon"> Automatic</span>
		    </div>
		    <p class="price">$146.00/day | $584.02 total</p>
		    <p>✔ Unlimited kilometers available</p>
		    <span class="badge">Special Offer</span>
		  </div>
		</div>
	
		<!-- Card 16 -->
		<div class="card">
		  <img src="/img/mb-v-class-van-black-2021.png" alt="Mercedes-Benz V250">
		  <div class="card-content">
		    <h3>Mercedes-Benz V250 or similar</h3>
		    <p>Full-size Van Automatic</p>
		    <div class="icons">
		      <span><img src="/img/user.png" alt="User Icon"> 8 people</span>
		      <span><img src="/img/bag.png" alt="Bag Icon"> 8 bags</span>
		      <span><img src="/img/processing.png" alt="Gear Icon"> Automatic</span>
		    </div>
		    <p class="price">$201.65/day | $806.61 total</p>
		    <p>✔ Unlimited kilometers available</p>
		    <span class="badge">Premium Comfort</span>
		  </div>
		</div>
	
		<!-- Card 17 -->
		<div class="card">
		  <img src="/img/mb-glb-suv-silver-2021.png" alt="Mercedes-Benz GLS 450">
		  <div class="card-content">
		    <h3>Mercedes-Benz GLS 450 4MATIC or similar</h3>
		    <p>Extraordinary SUV Automatic</p>
		    <div class="icons">
		      <span><img src="/img/user.png" alt="User Icon"> 7 people</span>
		      <span><img src="/img/bag.png" alt="Bag Icon"> 5 bags</span>
		      <span><img src="/img/processing.png" alt="Gear Icon"> Automatic</span>
		    </div>
		    <p class="price">$378.41/day | $1,513.64 total</p>
		    <p>✔ Unlimited kilometers available</p>
		    <span class="badge">Full-Size Luxury SUV</span>
		  </div>
		</div>
	  </div>
	  <button onclick="document.getElementById('card-container').innerHTML += document.getElementById('card-container').innerHTML" > Load More</button>
</div>

<!-- FAQ Question -->
   <!-- FAQ Question -->
   <div class="faq-container">
    <h2>Car Rental FAQs</h2>

    <div class="faq-item">
      <div class="faq-question">
        <span class="toggle-icon">+</span>
        <span>What do I need to rent a car with Enterprise?</span>
      </div>
      <div class="faq-answer">
        The essential items you will need to bring to an Enterprise Rent-A-Car branch when renting a vehicle are:
        <ul>
          <li>a valid drivers licence</li>
          <li>valid ID </li>
          <li> a credit or debit card.</li>
        </ul>
        You will also need to prove you are over 25 years of age, and there may be additional 
        documentation required for international drivers.
      </div>
    </div>

    <div class="faq-item">
      <div class="faq-question">
        <span class="toggle-icon">+</span>
        <span>Can I rent a car with a debit card?</span>
      </div>
      <div class="faq-answer">
        We accept all major debit cards except for Maestro, Electron, Solo and pre-paid cards. 
        To rent our 4x4s and premium vehicles, we require a credit card.
         All cards MUST have the main driver's name on it.
      </div>
    </div>

    <div class="faq-item">
      <div class="faq-question">
        <span class="toggle-icon">+</span>
        <span>How much does it cost to rent a car?</span>
      </div>
      <div class="faq-answer">
        Our prices may vary because car rental prices are based on various factors such as,
         vehicle size, seasonality, length of rental, vehicle make, availability and location.
         Customers are advised to start the booking process to determine the exact price.
      </div>
    </div>

    <div class="faq-item">
      <div class="faq-question">
        <span class="toggle-icon">+</span>
        <span>Can I modify, extend, or cancel my reservation?</span>
      </div>
      <div class="faq-answer">
        You can modify or cancel your reservation via our website or mobile app. 
        If you prepaid your booking and you cancel 3 days or more before your specified pick up
         time you will receive a full refund of the total amount. To extend your car rental, you can click 
         “Call to Extend Your Rental” in our mobile app. 
        You can also call your rental branch or 0800 800 227 to extend your reservation. 
      </div>
    </div>
  </div>

  <!-- Include the Footer -->
    	<jsp:include page="Footer.jsp" />

    <script src="Car.js"></script>
  </body>

  </html>