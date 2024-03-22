<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Shopping Cart</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
    }
    
    .container {
        max-width: 800px;
        margin: 20px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    
    h1 {
        color: #405f32;
        text-align: center;
    }
    
    table {
        width: 100%;
        border-collapse: collapse;
    }
    
    th, td {
        padding: 8px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    
    th {
        background-color: #405f32;
        color: #fff;
    }
    
    .total {
        margin-top: 20px;
        text-align: right;
        font-size: 18px;
    }
    
    .checkout-btn {
        background-color: #405f32;
        color: #fff;
        border: none;
        padding: 10px 20px;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
        margin-top: 10px;
        display: block;
        margin-left: auto;
    }
</style>
</head>
<body>

<div class="container">
    <h1>Shopping Cart</h1>
    <table>
        <thead>
            <tr>
                <th>Item</th>
                <th>Quantity</th>
                <th>Price</th>
                <th>Total</th>
            </tr>
        </thead>
        <tbody>
            <% 
                // Iterate through shopping cart items
                Map<String, Integer> shoppingCart = (Map<String, Integer>) request.getAttribute("shoppingCart");
                double grandTotal = 0.0;
                for (Map.Entry<String, Integer> entry : shoppingCart.entrySet()) {
                    String itemName = entry.getKey();
                    int quantity = entry.getValue();
                    double price = /* fetch price from your data */;
                    double total = quantity * price;
                    grandTotal += total;
            %>
            <tr>
                <td><%= itemName %></td>
                <td><%= quantity %></td>
                <td>Kshs.<%= price %></td>
                <td>Kshs.<%= total %></td>
            </tr>
            <% } %>
        </tbody>
    </table>
    <div class="total">
        Grand Total: Kshs.<%= grandTotal %>
    </div>
    <button class="checkout-btn">Checkout</button>
</div>

<script>
    //  JavaScript for handling checkout
    document.querySelector('.checkout-btn').addEventListener('click', function() {
        alert('Redirecting to checkout page...');
        //Redirection logic here
        window.location.href = "checkout.jsp"; 



    });
</script>

</body>
</html>
