<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Homepage</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f7f7f7;
            color: #333;
        }

        .navbar {
            background-color: #1a5031;
            width: 100%; /* Make the navbar full width */
            padding: 10px 0; /* Adjust padding as needed */
            display: flex;
            justify-content: center; /* Align items horizontally */
        }

        .navbar a {
            padding: 14px 16px;
            text-decoration: none;
            font-size: 18px;
            color: #fff;
            transition: background-color 0.3s;
        }

        .navbar a:hover {
            background-color: #185a3b;
        }

        .content {
            padding: 20px;
        }

        .menu-button {
            display: none;
            color: #333;
            cursor: pointer;
            font-size: 20px;
            padding: 10px;
        }

        h2 {
            color: #06100e;
            font-family: 'Courier New', monospace;
            font-size: 3em;
            font-weight: bold;
            margin-top: 0;
        }

        .grid-container {
            display: grid;
            grid-template-columns: repeat(3, 1fr); /* 3 columns */
            grid-gap: 20px;
            margin-top: 20px;
        }

        .card {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .card img {
            max-width: 100%;
            border-radius: 8px 8px 0 0;
        }

        .card-content {
            padding: 10px;
        }

        .card-content h2 {
            font-size: 1.5em;
            margin: 10px 0;
        }

        .price {
            font-size: 1.2em;
            color: #1a5031;
        }

        .card button {
            background-color: #1a5031;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .card button:hover {
            background-color: #185a3b;
        }

        @media screen and (max-width: 600px) {
            .navbar {
                display: none; /* Hide navbar on small screens */
            }

            .menu-button {
                display: block; /* Show menu button instead */
            }

            .navbar a {
                display: none; /* Hide navbar links */
            }

            .grid-container {
                grid-template-columns: 1fr; /* 1 column on small screens */
            }
        }

        .survey-container {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 20px;
            margin-top: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .survey-container h2 {
            margin-bottom: 20px;
        }

        .survey-container label {
            display: block;
            margin: 10px 0 5px;
        }

        .survey-container input, .survey-container select, .survey-container textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .survey-container button {
            background-color: #1a5031;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .survey-container button:hover {
            background-color: #185a3b;
        }
    </style>
</head>
<body>

<div class="navbar" id="myNav">
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
    <a href="#home">Home</a>
    <a href="whoarewe.jsp">About</a>
    <a href="cart.jsp">My Cart</a>
    <a href="orderManagement.jsp">Track Order</a>
    <a href="#contact">Contact</a>
    <a href="#survey">Survey</a>
    <a href="#faq" class="split">FAQ</a>
    <a href="adminDashboard.jsp">Admin</a>
</div>

<div class="content">
    <div class="menu-button" onclick="toggleNav()">&#9776; Menu</div>

    <h1>Available Produce This Week</h1>

    <div class="grid-container">
        <div class="card">
            <img src="images/produce1.jpg" alt="Onions">
            <div class="card-content">
                <h2>Onions</h2>
                <p>Quantity: 100 kg</p>
                <p class="price">Price: Ksh.250/kg</p>
                <p>Certification: Organic</p>
                <button onclick="addToCart('Onions', 250)">Add to Cart</button>
            </div>
        </div>

        <div class="card">
            <img src="images/produce2.jpg" alt="Cabbages">
            <div class="card-content">
                <h2>Cabbages</h2>
                <p>Quantity: 50 kg</p>
                <p class="price">Price: Ksh.300/kg</p>
                <p>Certification: Non-GMO</p>
                <button onclick="addToCart('Cabbages', 300)">Add to Cart</button>
            </div>
        </div>

        <div class="card">
            <img src="images/Tomatoes.jpg" alt="Tomatoes">
            <div class="card-content">
                <h2>Tomatoes</h2>
                <p>Quantity: 120 kg</p>
                <p class="price">Price: Ksh.250/kg</p>
                <p>Certification: Non-GMO</p>
                <button onclick="addToCart('Tomatoes', 250)">Add to Cart</button>
            </div>
        </div>

        <div class="card">
            <img src="images/Sweetpotatoes.jpg" alt="Sweet Potatoes">
            <div class="card-content">
                <h2>Sweet Potatoes</h2>
                <p>Quantity: 200 kg</p>
                <p class="price">Price: Ksh.270/kg</p>
                <p>Certification: Conventional</p>
                <button onclick="addToCart('Sweet Potatoes', 270)">Add to Cart</button>
            </div>
        </div>

        <div class="card">
            <img src="images/produce1.jpg" alt="Onions">
            <div class="card-content">
                <h2>Onions</h2>
                <p>Quantity: 100 kg</p>
                <p class="price">Price: Ksh.250/kg</p>
                <p>Certification: Organic</p>
                <button onclick="addToCart('Onions', 250)">Add to Cart</button>
            </div>
        </div>

        <div class="card">
            <img src="images/produce2.jpg" alt="Cabbages">
            <div class="card-content">
                <h2>Cabbages</h2>
                <p>Quantity: 50 kg</p>
                <p class="price">Price: Ksh.300/kg</p>
                <p>Certification: Non-GMO</p>
                <button onclick="addToCart('Cabbages', 300)">Add to Cart</button>
            </div>
        </div>

        <div class="card">
            <img src="images/Tomatoes.jpg" alt="Tomatoes">
            <div class="card-content">
                <h2>Tomatoes</h2>
                <p>Quantity: 120 kg</p>
                <p class="price">Price: Ksh.250/kg</p>
                <p>Certification: Non-GMO</p>
                <button onclick="addToCart('Tomatoes', 250)">Add to Cart</button>
            </div>
        </div>

        <div class="card">
            <img src="images/Sweetpotatoes.jpg" alt="Sweet Potatoes">
            <div class="card-content">
                <h2>Sweet Potatoes</h2>
                <p>Quantity: 200 kg</p>
                <p class="price">Price: Ksh.270/kg</p>
                <p>Certification: Conventional</p>
                <button onclick="addToCart('Sweet Potatoes', 270)">Add to Cart</button>
            </div>
        </div>

        <div class="card">
            <img src="images/produce1.jpg" alt="Onions">
            <div class="card-content">
                <h2>Onions</h2>
                <p>Quantity: 100 kg</p>
                <p class="price">Price: Ksh.250/kg</p>
                <p>Certification: Organic</p>
                <button onclick="addToCart('Onions', 250)">Add to Cart</button>
            </div>
        </div>
    </div>

    <div class="cart-container">
        <div id="cartItems"></div>
    </div>

    <div class="content">
        <a href="surveyform.jsp" target="_blank">Take Survey</a>
    </div>

    <div id="survey" class="survey-container">
        <h2>Survey</h2>
        <form action="submitSurvey.jsp" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="rating">How would you rate our service?</label>
            <select id="rating" name="rating" required>
                <option value="excellent">Excellent</option>
                <option value="good">Good</option>
                <option value="average">Average</option>
                <option value="poor">Poor</option>
            </select>

            <label for="comments">Additional Comments:</label>
            <textarea id="comments" name="comments" rows="4"></textarea>

            <button type="submit">Submit Survey</button>
        </form>
    </div>
</div>

<script>
    function toggleNav() {
        const navbar = document.getElementById("myNav");
        const isOpen = navbar.style.display === "flex";
        navbar.style.display = isOpen ? "none" : "flex";
    }

    function closeNav() {
        document.getElementById("myNav").style.display = "none";
    }

    document.addEventListener('DOMContentLoaded', function() {
        document.querySelector('.content').addEventListener('click', function(e) {
            if (!document.getElementById('myNav').contains(e.target) && e.target !== document.querySelector('.menu-button')) {
                closeNav();
            }
        });
    });

    const cartItemsDiv = document.getElementById('cartItems');
    let cart = [];

    function addToCart(item, price) {
        let cart = JSON.parse(sessionStorage.getItem('cart')) || [];
        cart.push({ item, price });
        sessionStorage.setItem('cart', JSON.stringify(cart));
        updateCart();
        window.location.href = 'cart.jsp'; // Redirect to cart.jsp
    }

    function updateCart() {
        cartItemsDiv.innerHTML = '';
        cart.forEach((item, index) => {
            const cartItemDiv = document.createElement('div');
            cartItemDiv.classList.add('cart-item');
            cartItemDiv.innerHTML = `${item.item} - Ksh.${item.price}/kg <button onclick="removeFromCart(${index})">Remove</button>`;
            cartItemsDiv.appendChild(cartItemDiv);
        });
    }

    function removeFromCart(index) {
        cart.splice(index, 1);
        updateCart();
    }
</script>

</body>
</html>
