<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FarmTrak</title>
    <style>
        body {
            
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            text-align: center;
            font-family: Arial, sans-serif;
        }

        h2 {
            color: #DB1F48;
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
            background-color: #72231c;
            padding: 30px;
            border-radius: 50px;
            margin-top: 100px;
        }

        #form-container input[type="text"],
        #form-container input[type="password"] {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            background-color: #e1bc39;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        #form-container input[type="submit"],
        #form-container input[type="button"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        #form-container input[type="submit"] {
            background-color: #a7a5a5;
            color: white;
        }

        #form-container input[type="button"] {
            background-color: #202242;
            color: white;
        }
    </style>
</head>
<body bgcolor="#346a8f">

    <h2>Welcome To FarmTrak</h2>

    <div id="form-container">
        <form method="POST" action="navigation.jsp">
            User Type:
            <select id="userType" name="userType">
                <option value="buyer">Buyer</option>
                <option value="artist">Artist</option>
                <option value="admin">Admin</option>
            </select><br>

            Username: <input type="text" id="username" name="username" /><br>
            Password: <input type="password" id="myInput" name="password" /><br><br>
            <input type="checkbox" onclick="myFunction()">Show Password
            <input type="button" value="Login" />
            <input type="button" value="Register" onclick="window.location.href='register.jsp'" />
        </form>
    </div>

    <script>
        function myFunction() {
            var x = document.getElementById("myInput");
            x.type === "password" ? x.type = "text" : x.type = "password";
           }
           function redirectToNavigation() {
               // Replace the following lines with your actual login logic
               var userType = document.getElementById("userType").value;
               var username = document.getElementById("username").value;
               var password = document.getElementById("myInput").value;

               // Perform authentication (this is a basic example, replace it with your actual authentication logic)
               if (userType === "buyer" && username === "buyer1@example.com" && password === "buyer123") {
                   // If login is successful for a buyer, redirect to navigation.jsp
                   window.location.href = 'navigation.jsp';
                   return true; // Allow form submission
               } else if (userType === "artist" && username === "artist1@example.com" && password === "artist123") {
                   // If login is successful for an artist, redirect to artistDashboard.jsp (replace with the actual artist page)
                   window.location.href = 'artistDashboard.jsp';
                   return true; // Allow form submission
               } else if (userType === "admin" && username === "admin1@example.com" && password === "admin123") {
                   // If login is successful for an admin, redirect to adminDashboard.jsp (replace with the actual admin page)
                   window.location.href = 'adminDashboard.jsp';
                   return true; // Allow form submission
               } else {
                   // If login fails, display an error message (you can customize this part)
                   alert("Invalid credentials. Please try again.");
                   return false; // Prevent form submission
               }
           }

           
    </script>
</body>
</html>

