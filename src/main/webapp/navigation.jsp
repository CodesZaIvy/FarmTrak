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
    <!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Available Produce</title>
<style>

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: Arial, sans-serif;
  background-color: #405f32;
}

.grid-container {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 20px;
  padding: 20px;
}

.card {
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 8px;
  overflow: hidden;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  transition: transform 0.3s ease;
}

h1{
  font-size: 35px;
  margin-top: 10px;
  color: #abbebf;
  text-align: center;
}

.card:hover {
  transform: translateY(-5px);
}

.card img {
  width: 100%;
  height: 200px;
  object-fit: cover;
  border-bottom: 1px solid #ddd;
}

.card-content {
  padding: 20px;
}

.card h2 {
  font-size: 1.5rem;
  margin-bottom: 10px;
  color: #333;
}

.card p {
  margin: 5px 0;
  color: #666;
}

.card p.price {
  font-weight: bold;
}

.cart-container {
  margin-top: 20px;
  padding: 10px;
  background-color: #f9f9f9;
  border-radius: 8px;
}

.cart-item {
  margin-bottom: 10px;
}

.cart-item button {
  margin-left: 10px;
  padding: 5px 10px;
  background-color: #405f32;
  color: #fff;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}



</style>
</head>
<body>

  

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
</div>

</div>


<div class="cart-container">

  <div id="cartItems"></div>
</div>

<div class="content">
  <!-- Link to open the survey form in a new tab -->
  <a href="surveyform.jsp" target="_blank">Take Survey</a>
</div>

<script>
  const cartItemsDiv = document.getElementById('cartItems');
  let cart = [];

    function addToCart(item, price) {
    // Get the existing cart items from session storage or initialize an empty array
    let cart = JSON.parse(sessionStorage.getItem('cart')) || [];
    // Add the new item to the cart
    cart.push({ item, price });
    // Store the updated cart back to session storage
    sessionStorage.setItem('cart', JSON.stringify(cart));
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
</script>

</body>
</html>
