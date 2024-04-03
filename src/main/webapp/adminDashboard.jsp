
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <style>
        body {
            background-color: #aca6a4;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            text-align: center;
            font-family: Arial, sans-serif;
        }

        h2 {
            color: #131bc2;
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
            background-color: #123139;
            padding: 30px;
            border-radius: 50px;
            margin-top: 100px;
        }

        #form-container input[type="text"],
        #form-container input[type="password"] {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            background-color: #2e919a;
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
<body>

    <h2>Admin Login</h2>

    <div id="form-container">
        <form method="post" action="navigation.jsp" onsubmit="return redirectToNavigation();">
            <select id="userType" name="userType">
               <option value="admin">Admin</option>
            </select><br>

            Admin Name: <input type="text" id="adminname" name="adminname" required /><br>
            Password: <input type="password" id="myInput" name="password" required /><br><br>
            <input type="checkbox" onclick="myFunction()">Show Password
            <input type="submit" value="Login" />
            <input type="button" value="Register" onclick="window.location.href='register.jsp'" />
        </form>
    </div>

    <script>
        function myFunction() {
            var x = document.getElementById("myInput");
            x.type === "password" ? x.type = "text" : x.type = "password";
        }

        function redirectToNavigation() {
            var userType = document.getElementById("userType").value;
            var adminname = document.getElementById("adminname").value;
            var password = document.getElementById("myInput").value;

            if(userType === "admin" && adminname === "admin1@example.com" && password === "admin123") {
                window.location.href = 'adminDashboard.jsp';
                return true;
            } else {
                alert("Invalid credentials. Please try again.");
                return false;
            }
        }
    </script>
</body>
</html>
