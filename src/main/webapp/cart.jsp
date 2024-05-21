<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart</title>
    <style>
        /* Global "table" column settings */
        .product-details { float: left; width: 50%; }
        .product-price { float: left; width: 15%; }
        .product-quantity { float: left; width: 15%; }
        .product-removal { float: left; width: 10%; }
        .product-line-price { float: left; width: 10%; text-align: right; }
        
        /* This is used as the traditional .clearfix class */
        .group:before,
        .group:after {
            content: '';
            display: table;
        }
        .group:after {
            clear: both;
        }
        .group {
            zoom: 1;
        }
        
        /* Apply clearfix in a few places */
        .shopping-cart, .column-labels, .product, .totals-item {
            overflow: hidden;
        }
        
        /* Apply dollar signs */
        .product .product-price:before, .product .product-line-price:before, .totals-value:before {
            content: 'Kshs';
        }
        
        /* Body/Header stuff */
        body {
            padding: 0px 30px 30px 20px;
            font-family: Arial, sans-serif; /* Modern font */
            font-weight: 300; /* Lighter font weight */
            line-height: 1.6; /* Improved readability */
        }
        
        h1 {
            font-weight: 300;
            text-align: center; /* Centered heading */
            margin-bottom: 30px; /* Increased bottom margin */
        }
        
        label {
            color: #333; /* Darker label color */
        }
        
        /* Column headers */
        .column-labels {
            display: flex; /* Flexbox layout */
            justify-content: space-between; /* Evenly spaced labels */
            padding-bottom: 15px;
            margin-bottom: 15px;
            border-bottom: 1px solid #ddd; /* Lighter border */
        }
        
        .column-labels > label {
            flex: 1; /* Equal width columns */
            text-align: center; /* Centered text */
            text-transform: uppercase; /* Uppercase labels */
        }
        
        /* Product entries */
        .product {
            display: flex; /* Flexbox layout */
            align-items: center; /* Vertically aligned */
            margin-bottom: 20px;
            border-bottom: 1px solid #ddd; /* Lighter border */
        }
        
        .product > div {
            flex: 1; /* Equal width columns */
            padding: 10px; /* Improved spacing */
        }
        
        .product-title {
            font-weight: bold;
            margin-bottom: 5px;
        }
        
        .product-quantity input {
            width: 60px; /* Adjusted input width */
        }
        
        .remove-product button {
            border: 0;
            padding: 8px;
            background-color: #c66;
            color: #fff;
            font-weight: bold;
            font-size: 12px;
            border-radius: 3px;
            cursor: pointer; /* Pointer cursor */
        }
        
        .remove-product button:hover {
            background-color: #a44;
        }
        
        /* Totals section */
        .totals {
            margin-top: 20px; /* Increased top margin */
            border-top: 1px solid #ddd; /* Lighter border */
            padding-top: 10px; /* Improved spacing */
        }
        
        .totals-item {
            display: flex; /* Flexbox layout */
            justify-content: space-between; /* Evenly spaced items */
            margin-bottom: 10px;
        }
        
        .totals-item label {
            flex: 1; /* Equal width labels */
            text-align: right; /* Right-aligned labels */
        }
        
        .totals-item .totals-value {
            font-weight: bold;
        }
        
        .checkout {
            border: 0;
            margin-top: 20px;
            padding: 10px 25px;
            background-color: #6b6;
            color: #fff;
            font-size: 18px; /* Increased font size */
            border-radius: 3px;
            cursor: pointer; /* Pointer cursor */
            display: block; /* Full width button */
            margin: 0 auto; /* Centered button */
        }
        
        .checkout:hover {
            background-color: #494;
        }
    </style>
</head>
<body>

    <div class="grid-container">
  
        <div class="card">
          <div class="card-content">
            <h2>Onions</h2>
            <p>Quantity: 100 kg</p>
            <p class="price">Price: Ksh.250/kg</p>
            <p>Certification: Organic</p>
            <button onclick="addToCart('Onions', 250)">Add to Cart</button>
          </div>
        </div>
      
        <div class="card">
          <div class="card-content">
            <h2>Cabbages</h2>
            <p>Quantity: 50 kg</p>
            <p class="price">Price: Ksh.300/kg</p>
            <p>Certification: Non-GMO</p>
            <button onclick="addToCart('Cabbages', 300)">Add to Cart</button>
          </div>
        </div>
      
        <div class="card">
          <div class="card-content">
            <h2>Tomatoes</h2>
            <p>Quantity: 120 kg</p>
            <p class="price">Price: Ksh.250/kg</p>
            <p>Certification: Non-GMO</p>
            <button onclick="addToCart('Tomatoes', 250)">Add to Cart</button>
          </div>
        </div>
      
        <div class="card">
          <div class="card-content">
            <h2>Sweet Potatoes</h2>
            <p>Quantity: 200 kg</p>
            <p class="price">Price: Ksh.270/kg</p>
            <p>Certification: Conventional</p>
            <button onclick="addToCart('Sweet Potatoes', 270)">Add to Cart</button>
          </div>
        </div>

        <div class="shopping-cart" id="cartItems">
            <div class="column-labels">
                <label class="product-details">Product</label>
                <label class="product-price">Price</label>
                <label class="product-quantity">Quantity</label>
                <label class="product-removal">Remove</label>
                <label class="product-line-price">Total</label>
            </div>
        </div>

        <div class="totals">
            <div class="totals-item">
                <label>Subtotal</label>
                <div class="totals-value" id="cart-subtotal">0.00</div>
            </div>
            <div class="totals-item">
                <label>Tax (5%)</label>
                <div class="totals-value" id="cart-tax">0.00</div>
            </div>
            <div class="totals-item">
                <label>Shipping</label>
                <div class="totals-value" id="cart-shipping">0.00</div>
            </div>
            <div class="totals-item totals-item-total">
                <label>Grand Total</label>
                <div class="totals-value" id="cart-total">0.00</div>
            </div>
        </div>

        <a href="#" class="checkout">Checkout</a>

    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            var taxRate = 0.05;
            var shippingRate = 15.00;
            var fadeTime = 300;

            // Function to generate HTML for cart items
            function generateCartItems(cart) {
                var cartItemsHtml = '';
                cart.forEach(function(item) {
                    cartItemsHtml += '<div class="product">';
                    cartItemsHtml += '<div class="product-details">';
                    cartItemsHtml += '<div class="product-title">' + item.item + '</div>';
                    cartItemsHtml += '</div>';
                    cartItemsHtml += '<div class="product-price">Kshs.' + item.price.toFixed(2) + '/kg</div>';
                    cartItemsHtml += '<div class="product-quantity">';
                    cartItemsHtml += '<input type="number" value="' + item.quantity + '" min="1" onchange="updateQuantity(this)">';
                    cartItemsHtml += '</div>';
                    cartItemsHtml += '<div class="product-removal">';
                    cartItemsHtml += '<button class="remove-product" onclick="removeItem(this)">Remove</button>';
                    cartItemsHtml += '</div>';
                    cartItemsHtml += '<div class="product-line-price">' + (item.price * item.quantity).toFixed(2) + '</div>';
                    cartItemsHtml += '</div>';
                });
                return cartItemsHtml;
            }

            // Function to recalculate cart totals
            function recalculateCart() {
                // Retrieve cart items from session storage
                var cart = JSON.parse(sessionStorage.getItem('cart')) || [];
                // Generate HTML for cart items
                var cartItemsHtml = generateCartItems(cart);
                // Update cart items HTML
                $('#cartItems').html(cartItemsHtml);
                
                var subtotal = 0;
                $('.product').each(function() {
                    var linePrice = parseFloat($(this).children('.product-line-price').text().replace('Kshs', ''));
                    if (!isNaN(linePrice)) {
                        subtotal += linePrice;
                    }
                });
                var tax = subtotal * taxRate;
                var shipping = (subtotal > 0 ? shippingRate : 0);
                var total = subtotal + tax + shipping;
                $('.totals-value').fadeOut(fadeTime, function() {
                    $('#cart-subtotal').html(subtotal.toFixed(2));
                    $('#cart-tax').html(tax.toFixed(2));
                    $('#cart-shipping').html(shipping.toFixed(2));
                    $('#cart-total').html(total.toFixed(2));
                    if (total == 0) {
                        $('.checkout').fadeOut(fadeTime);
                    } else {
                        $('.checkout').fadeIn(fadeTime);
                    }
                    $('.totals-value').fadeIn(fadeTime);
                });
            }

            function updateQuantity(quantityInput) {
                var productRow = $(quantityInput).parent().parent();
                var price = parseFloat(productRow.children('.product-price').text().replace('Kshs', '').replace('/kg', ''));
                var quantity = $(quantityInput).val();
                var linePrice = price * quantity;
                productRow.children('.product-line-price').each(function() {
                    $(this).fadeOut(fadeTime, function() {
                        $(this).text(linePrice.toFixed(2));
                        recalculateCart(); // Recalculate cart after updating quantity
                        $(this).fadeIn(fadeTime);
                    });
                });
                // Update quantity in sessionStorage
                var index = productRow.index();
                var cart = JSON.parse(sessionStorage.getItem('cart')) || [];
                cart[index].quantity = quantity;
                sessionStorage.setItem('cart', JSON.stringify(cart));
            }

            function removeItem(removeButton) {
                var productRow = $(removeButton).parent().parent();
                productRow.slideUp(fadeTime, function() {
                    var index = productRow.index();
                    var cart = JSON.parse(sessionStorage.getItem('cart')) || [];
                    cart.splice(index, 1); // Remove item from cart array
                    sessionStorage.setItem('cart', JSON.stringify(cart));
                    productRow.remove();
                    recalculateCart();
                });
            }

            // Function to add items to cart
            window.addToCart = function(item, price) {
                var newProduct = {
                    item: item,
                    price: price,
                    quantity: 1
                };
                var cart = JSON.parse(sessionStorage.getItem('cart')) || [];
                cart.push(newProduct);
                sessionStorage.setItem('cart', JSON.stringify(cart));
                recalculateCart();
            };

            // Initial cart calculation
            recalculateCart();
        });
    </script>

</body>
</html>
