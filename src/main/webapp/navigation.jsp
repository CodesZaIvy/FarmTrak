<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Homepage</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            background-image: url('images/home.jpg');
            background-position: top;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            text-align: left; /* Align text to the left */
            font-family: Arial, sans-serif;
            margin: 0; /* Remove default margin */
            padding: 0; /* Remove default padding */
        }

        .navbar {
            overflow: hidden;
            background-color: #93d08a; /* Set the background color of the navbar */
            position: fixed; /* Make the navbar fixed at the top of the page */
            width: 100%; /* Full width */
            z-index: 1; /* Ensure the navbar is above other elements */
            text-align: center;
            padding-top: 10px; /* Add padding to the top */
        }

        .navbar a {
            padding: 14px 16px;
            text-decoration: none;
            font-size: 18px;
            color: #233834;
            display: inline-block;
            transition: 0.3s;
        }

        .navbar a:hover {
            color: #09100b;
        }

        .menu-button {
            font-size: 30px;
            cursor: pointer;
            color: #252827;
            display: none; /* Initially hide the menu button on larger screens */
        }

        h2 {
            color: #06100e; /* Change color to match the menu button */
            font-family: 'Courier New', monospace;
            font-size: 3em;
            font-weight: bold;
            margin-top: 60px;
            text-align: left; /* Align text to the left */
            margin-left: 30px; /* Add some left margin for better positioning */
        }

        @media screen and (max-width: 600px) {
            .navbar a {
                display: none; /* Hide navbar links on small screens */
            }

            .menu-button {
                display: inline-block; /* Display the menu button on small screens */
            }
        }
    </style>
</head>
<body>

<div class="navbar">
    <div class="menu-button" onclick="openNav()">&#9776; open</div>
    <a href="#home">Home</a>
    <a href="produceListing.jsp">Produce</a>
    <a href="whoarewe.jsp">About</a>
    <a href="adminDashboard.jsp">Admin</a>
    <a href="#contact">Contact</a>
    <a href="#survey">Survey</a>
    <a href="#faq" class="split">FAQ</a>
</div>



<div id="myNav" class="overlay">
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
    <div class="overlay-content">
        <a class="active" href="#home">Home</a>
        <a href="produceListing.jsp">Produce</a>
        <a href="whoarewe.jsp">About</a>
        <a href="adminDashboard.jsp">Admin</a>
        <a href="#contact">Contact</a>
        <a href="#survey">Survey</a>
        <a href="#faq" class="split">FAQ</a>
    </div>
</div>

<script>
    function openNav() {
        document.getElementById("myNav").style.width = "100%";
    }

    function closeNav() {
        document.getElementById("myNav").style.width = "0%";
    }
</script>

</body>
</html>
