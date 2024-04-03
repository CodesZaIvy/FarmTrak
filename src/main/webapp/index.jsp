<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FarmTrak</title>
    <style>
        body {
            background-color: #f3f3f3; /* Light gray background */
            text-align: center;
            font-family: Arial, sans-serif;
        }

        #logo img {
            width: 100px; /* Adjust this value as needed */
            height: auto; /* This will maintain the aspect ratio */
            position: absolute;
            top: 20px;
            left: 20px;
            z-index: 2;
        }

        h2 {
            color: #2ecc71; /* Green header */
            font-family: 'Courier New', monospace;
            font-size: 3em;
            font-weight: bold;
            margin-top: 50px;
        }

        #form-container {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 600px;
            margin: 0 auto;
            background-color: #ffffff; /* White container background */
            padding: 30px;
            border-radius: 20px; /* Slightly rounded corners */
            margin-top: 100px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1); /* Soft shadow */
        }

        #form-container input[type="text"],
        #form-container input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 8px 0;
            background-color: #f0f0f0; /* Light gray input background */
            border: none;
            border-radius: 8px; /* Rounded corners for inputs */
        }

        #form-container input[type="submit"],
        #form-container input[type="button"] {
            width: 100%;
            padding: 12px;
            margin: 8px 0;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-weight: bold;
            text-transform: uppercase;
        }

        #form-container input[type="submit"] {
            background-color: #2ecc71; /* Green submit button */
            color: #ffffff; /* White text */
        }

        #form-container input[type="button"] {
            background-color: #27ae60; /* Darker green for register button */
            color: #ffffff; /* White text */
        }

        select {
            width: 100%;
            padding: 12px;
            margin: 8px 0;
            border: none;
            border-radius: 8px;
            background-color: #f0f0f0; /* Light gray select background */
            font-size: 16px;
            font-weight: bold;
            color: #555555; /* Dark gray text */
        }

        /* Checkbox styles */
        .checkbox-container {
            display: inline-block;
            margin-top: 10px;
            margin-bottom: 20px;
        }

        .checkbox-container input[type="checkbox"] {
            display: none; /* Hide the checkbox */
        }

        .checkbox-container label {
            font-size: 14px;
            color: #555555;
            cursor: pointer;
        }

        .checkbox-container label:before {
            content: "";
            display: inline-block;
            width: 18px;
            height: 18px;
            background-color: #ffffff;
            border: 2px solid #27ae60; /* Green border */
            border-radius: 3px;
            margin-right: 10px;
            vertical-align: middle;
            transition: background-color 0.3s, border-color 0.3s;
        }

        .checkbox-container input[type="checkbox"]:checked + label:before {
            background-color: #27ae60; /* Green background when checked */
            border-color: #27ae60; /* Darker green border when checked */
        }
    </style>
</head>
<body>

    <div id="logo">
    <a href="whoarewe.jsp" class="logo">
    <img src="images/Logo.png" alt="Logo"></a>
    </div>

<h2>Welcome To FarmTrak</h2>

<div id="form-container">
    <form method="post" action="navigation.jsp" onsubmit="return redirectToNavigation();">
        I am a :
        <select id="userType" name="userType">
            <option value="buyer">Buyer</option>
            <option value="farmer">Farmer</option>
        </select><br>

        Username: <input type="text" id="username" name="username" required /><br>
        Password: <input type="password" id="myInput" name="password" required /><br><br>
        
        <!-- Checkbox for showing password -->
        <div class="checkbox-container">
            <input type="checkbox" id="showPasswordCheckbox" onclick="togglePasswordVisibility()">
            <label for="showPasswordCheckbox">Show Password</label>
        </div>
        
        <input type="submit" value="Login" />
        <input type="button" value="Register" onclick="window.location.href='register.jsp'" />
    </form>
</div>

<script>
    function togglePasswordVisibility() {
        var passwordInput = document.getElementById("myInput");
        passwordInput.type === "password" ? passwordInput.type = "text" : passwordInput.type = "password";
    }

    function redirectToNavigation() {
        var userType = document.getElementById("userType").value;
        var username = document.getElementById("username").value;
        var password = document.getElementById("myInput").value;

        if (userType === "buyer" && username === "buyer1@example.com" && password === "buyer123") {
            window.location.href = 'navigation.jsp';
            return true;
        } else if (userType === "farmer" && username === "farmer1@example.com" && password === "farmer123") {
            window.location.href = 'farmerDashboard.jsp';
            return true;
        
        } else {
            alert("Invalid credentials. Please try again.");
            return false;
        }
    }
</script>
</body>
</html>
