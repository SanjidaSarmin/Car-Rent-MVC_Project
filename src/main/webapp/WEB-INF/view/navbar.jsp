<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Gari Lagbe</title>
  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
    }

    /* - -------Navber-------  */

    header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 10px 40px;
      background-color: white;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    header .logo {
      display: flex;
      align-items: center;
      font-size: 16px;
      font-weight: bold;
      color: #147c3c;
      font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    }

    header .logo img {
      width: 50%;
      height: auto;
    }


    header nav ul {
      list-style: none;
      display: flex;
      gap: 30px;
      margin: 0;
      padding: 0;
      font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    }

    header nav ul li {
      position: relative;
    }

    header nav ul li a {
      text-decoration: none;
      color: black;
      font-size: 18px;
      transition: color 0.3s;
    }

    header nav ul li a:hover {
      color: #147c3c;
    }

    .search-bar {
      display: flex;
      align-items: center;
      gap: 5px;
    }

    .search-bar input {
      padding: 10px;
      font-size: 14px;
      border: 1px solid  #147c3c;
      border-radius: 4px;
    }

    .search-bar button {
      background: none;
      border: none;
      cursor: pointer;

    }

    .search-bar button img {
      width: 20px;
      height: 20px;

    }
  </style>
</head>

<body>
  <!-- -------Navbar------- -->
  <header>
    <div class="logo">
      <img src="/img/logo.png" alt="logo">
      <p>Gari Lagbe</p>
    </div>
    <nav>
      <ul>
        <li><a href="/">Home</a></li>
        <li><a href="/car">Vehicles</a></li>
        <li><a href="/reservation">Reservation</a></li>
        <li><a href="/rent">Daily Rent</a></li>
        <li><a href="/dashboard">Dashboard</a></li>
        <li><a href="/about">About Us</a></li>
        <li><a href="/contact">Contact Us</a></li>
      </ul>
    </nav>
    <div class="search-bar">
      <input type="text" placeholder="Search Car..">
      <button><img src="/img/search.png" alt="Search"></button>
    </div>
  </header>
</body>

</html>