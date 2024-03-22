<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Signup</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f9e8; /* Light green background */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            position: relative; /* Added for positioning the logo */
        }

        #logo img {
            width: 100px; /* Adjust this value as needed */
            height: auto; /* This will maintain the aspect ratio */
            position: absolute;
            top: 20px;
            left: 20px;
            z-index: 2;
        }

        #form-container {
            background-color: rgba(53, 139, 78, 0.8); /* Greenish with opacity */
            padding: 30px;
            border-radius: 20px;
            width: 50%; /* Adjusted width */
            margin: 0 auto;
            text-align: left;
            color: white;
        }

        #form-container label {
            display: block;
            margin-top: 10px;
        }

        #form-container input,
        #form-container select {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        #form-container input[type="checkbox"] {
            margin-top: 5px;
        }

        #form-container button {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            color: white;
            background-color: #357b4e; /* Dark green button */
        }

        #form-container a {
            color: #e1bc39; /* Yellowish */
            text-decoration: none;
        }
    </style>
</head>
<body>

<div id="logo">
    <img src="images/Logo.png" alt="Logo">
</div>

<div id="form-container">
    <form method="POST" action="registrationSuccess.jsp">
        <label for="username"><b>Username</b></label>
        <input type="text" placeholder="Enter Username" name="username" required>

        <label for="password"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="password" required>

        <label for="confirmPassword"><b>Confirm Password</b></label>
        <input type="password" placeholder="Confirm Password" name="confirmPassword" required>

        <label for="role"><b>Select Role:</b></label>
        <select id="role" name="role">
            <option value="farmer">Farmer</option>
            <option value="buyer">Buyer</option>
        </select>
        
        <button onclick="selectRole()">Submit</button>
        
        <script>
        function selectRole() {
            var selectedRole = document.getElementById("role").value;
            if (selectedRole === "farmer") {
                // Redirect to farmer page or perform farmer-specific actions
                window.location.href = "farmerDashboard.jsp";
            } else if (selectedRole === "buyer") {
                // Redirect to buyer page or perform buyer-specific actions
                window.location.href = "buyerDashboard.jsp";
            }
        }
        </script>

    </form>
</div>

</body>
</html>
