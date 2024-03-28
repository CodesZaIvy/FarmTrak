<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart</title>
    <style>
        /* Global "table" column settings */
        .product-image { float: left; width: 20%; border: 1px solid #ddd; padding: 5px; margin-right: 10px; }
        .product-details { float: left; width: 37%; }
        .product-price { float: left; width: 12%; }
        .product-quantity { float: left; width: 10%; }
        .product-removal { float: left; width: 9%; }
        .product-line-price { float: left; width: 12%; text-align: right; }
        
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
            @extend .group;
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
        
        .product-image {
            text-align: center;
        }
        
        .product-image img {
            max-width: 100px; /* Maximum image width */
            height: auto; /* Maintain aspect ratio */
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

<h1>Shopping Cart</h1>

<div class="shopping-cart">

    <div class="column-labels">
        <label class="product-image">Image</label>
        <label class="product-details">Product</label>
        <label class="product-price">Price</label>
        <label class="product-quantity">Quantity</label>
        <label class="product-removal">Remove</label>
        <label class="product-line-price">Total</label>
    </div>

    <div class="product">
        <div class="product-image">
            <img src="images/Potatoes.jpg" alt="Potatoes">
        </div>
        <div class="product-details">
            <div class="product-title">GMO Potatoes</div>
            <p class="product-description">The best  potatoes you can find in Limuru ,The farmer plants different species. I made meat stew with them the other day and I loved them. I'm a fan.</p>
        </div>
        <div class="product-price"> 120/Kg </div>
        <div class="product-quantity">
            <input type="number" value="2" min="1">
        </div>
        <div class="product-removal">
            <button class="remove-product">
                Remove
            </button>
        </div>
        <div class="product-line-price">120</div>
    </div>

    <div class="product">
        <div class="product-image">
            <img src="images/Tomatoes.jpg" alt="Tomatoes">
        </div>
        <div class="product-details">
            <div class="product-title">Tomatoes </div>
            <p class="product-description">Healthy Organic Tomatoes from a farmer who plants seasonally plants them in Kerio Valley ,Kenya </p>
        </div>
        <div class="product-price"> 450/Kg </div>
        <div class="product-quantity">
            <input type="number" value="1" min="1">
        </div>
        <div class="product-removal">
            <button class="remove-product">
                Remove
            </button>
        </div>
        <div class="product-line-price">450</div>
    </div>

    <div class="totals">
        <div class="totals-item">
            <label>Subtotal</label>
            <div class="totals-value" id="cart-subtotal">71.97</div>
        </div>
        <div class="totals-item">
            <label>Tax (5%)</label>
            <div class="totals-value" id="cart-tax">3.60</div>
        </div>
        <div class="totals-item">
            <label>Shipping</label>
            <div class="totals-value" id="cart-shipping">150/km</div>
        </div>
        <div class="totals-item totals-item-total">
            <label>Grand Total</label>
            <div class="totals-value" id="cart-total">570</div>
        </div>
    </div>

    <a href="checkout.jsp" class="checkout">Checkout</a>

</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function() {
        var taxRate = 0.05;
        var shippingRate = 15.00;
        var fadeTime = 300;

        $('.product-quantity input').change(function() {
            updateQuantity(this);
        });

        $('.remove-product button').click(function() {
            removeItem(this);
        });

        function recalculateCart() {
            var subtotal = 0;
            $('.product').each(function() {
                subtotal += parseFloat($(this).children('.product-line-price').text());
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
            var price = parseFloat(productRow.children('.product-price').text());
            var quantity = $(quantityInput).val();
            var linePrice = price * quantity;
            productRow.children('.product-line-price').each(function() {
                $(this).fadeOut(fadeTime, function() {
                    $(this).text(linePrice.toFixed(2));
                    recalculateCart();
                    $(this).fadeIn(fadeTime);
                });
            });
        }

        function removeItem(removeButton) {
            var productRow = $(removeButton).parent().parent();
            productRow.slideUp(fadeTime, function() {
                productRow.remove();
                recalculateCart();
            });
        }
    });
</script>

</body>
</html>