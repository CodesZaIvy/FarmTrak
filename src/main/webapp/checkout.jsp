<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkout</title>
    <style>
        /* Global styles */
        body {
            padding: 0px 30px 30px 20px;
            font-family: Arial, sans-serif;
            font-weight: 300;
            line-height: 1.6;
        }
        h1 {
            font-weight: 300;
            text-align: center;
            margin-bottom: 30px;
        }
        label {
            color: #333;
        }
        /* Checkout styles */
        .checkout-form {
            max-width: 600px;
            margin: 0 auto;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        .form-group input[type="text"],
        .form-group input[type="email"],
        .form-group input[type="tel"] {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border-radius: 5px;
            border: 1px solid #ddd;
        }
        .form-group input[type="submit"] {
            background-color: #6b6;
            color: #fff;
            border: 0;
            padding: 12px 20px;
            font-size: 18px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .form-group input[type="submit"]:hover {
            background-color: #494;
        }
        /* Payment section */
        .payment-section {
            margin-top: 50px;
            border-top: 1px solid #ddd;
            padding-top: 30px;
        }
        .payment-section h2 {
            font-weight: 300;
            text-align: center;
            margin-bottom: 20px;
        }
        .stripe-button {
            display: block;
            width: 100%;
            max-width: 150px;
            margin: 0 auto;
        }
    </style>
</head>
<body>

<h1>Checkout</h1>

<div class="checkout-form">
    <form action="process_payment.jsp" method="POST">
        <div class="form-group">
            <label for="name">Full Name</label>
            <input type="text" id="name" name="name" required>
        </div>
        <div class="form-group">
            <label for="email">Email Address</label>
            <input type="email" id="email" name="email" required>
        </div>
        <div class="form-group">
            <label for="phone">Phone Number</label>
            <input type="tel" id="phone" name="phone" required>
        </div>
        <div class="form-group">
            <input type="submit" value="Place Order">
        </div>
    </form>
</div>

<div class="payment-section">
    <h2>Payment</h2>
    <!-- Stripe integration -->
    <form action="stripe_payment.jsp" method="POST">
        <script src="https://checkout.stripe.com/checkout.js" class="stripe-button"
                data-key="YOUR_STRIPE_PUBLISHABLE_KEY"
                data-amount="999"
                data-name="Your Store"
                data-description="Checkout"
                data-image="https://stripe.com/img/documentation/checkout/marketplace.png"
                data-locale="auto"
                data-currency="usd">
        </script>
    </form>
</div>

</body>
</html>
