<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Homepage</title>
    <style>
        body {
            background-image: url('images/home.jpg');
            background-position: top;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            text-align: left;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .navbar {
            background-color: #1a5031; /* Darker shade of green */
            position: fixed;
            height: 100%;
            width: 200px;
            z-index: 1;
            text-align: center;
            padding-top: 10px;
            overflow: hidden;
            transition: width 0.5s;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            align-items: center;
        }

        .navbar a {
            padding: 14px 16px;
            text-decoration: none;
            font-size: 18px;
            color: #fff; /* White color for text */
            display: block;
            transition: 0.3s;
        }

        .navbar a:hover {
            background-color: #185a3b; /* Darker shade on hover */
        }

        .menu-button {
            display: none;
            color: #fff;
            cursor: pointer;
            font-size: 20px;
            padding: 10px;
        }

        h2 {
            color: #06100e;
            font-family: 'Courier New', monospace;
            font-size: 3em;
            font-weight: bold;
            margin-top: 60px;
            text-align: left;
            margin-left: 30px;
        }

        @media screen and (max-width: 600px) {
            .navbar {
                width: 0;
            }

            .menu-button {
                display: block;
            }

            .navbar a {
                display: none;
            }
        }
    </style>
</head>
<body>

<div class="navbar" id="myNav">
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
    <a href="#home">Home</a>
    <a href="produceListing.jsp">Produce</a>
    <a href="whoarewe.jsp">About</a>
    <a href="adminDashboard.jsp">Admin</a>
    <a href="cart.jsp">My_Cart</a>
    <a href="#contact">Contact</a>
    <a href="#survey">Survey</a>
    <a href="#faq" class="split">FAQ</a>
</div>

<div class="menu-button" onclick="toggleNav()">&#9776; open</div>

<script>
    function toggleNav() {
        var navbar = document.getElementById("myNav");
        if (navbar.style.width === "200px") {
            closeNav();
        } else {
            openNav();
        }
    }

    function openNav() {
        document.getElementById("myNav").style.width = "200px";
        document.addEventListener('click', outsideClick);
    }

    function closeNav() {
        document.getElementById("myNav").style.width = "0";
        document.removeEventListener('click', outsideClick);
    }

    function outsideClick(e) {
        var navbar = document.getElementById("myNav");
        var menuButton = document.querySelector(".menu-button");
        if (!navbar.contains(e.target) && e.target !== menuButton) {
            closeNav();
        }
    }
</script>

</body>
</html>
