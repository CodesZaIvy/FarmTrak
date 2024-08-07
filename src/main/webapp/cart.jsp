<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="com.farmtrak.model.CartManager" %>
<%@ page import="com.farmtrak.model.CartManager.CartItem" %>
<%@ page import="java.util.List" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cart</title>
    <style>
        body {
            padding: 30px 20px;
            font-family: Arial, sans-serif;
            font-weight: 300;
            line-height: 1.6;
            background-color: #f5f5f5;
        }

        h1 {
            font-weight: 300;
            text-align: center;
            margin-bottom: 30px;
        }

        .cart-container {
            width: 100%;
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            border: 1px solid #cccccc;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .cart-item {
            padding: 10px;
            border-bottom: 1px solid #cccccc;
        }

        .cart-item:last-child {
            border-bottom: none;
        }

        .cart-item button {
            background-color: #d32f2f;
            color: #ffffff;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
        }

        .cart-item button:hover {
            background-color: #c62828;
        }

        .total-price {
            text-align: right;
            margin-top: 20px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h1>Your Cart</h1>
    <div class="cart-container">

        
        <%
            List<CartItem> cart = CartManager.getCart(session);
            double totalPrice = 0;
            for (int i = 0; i < cart.size(); i++) {
                CartItem item = cart.get(i);
                totalPrice += item.getPriceAsDouble();
        %>
            <div class="cart-item">
                <%= item.getItemName() %> - Ksh.<%= item.getPrice() %>
                <form action="<%= request.getContextPath() %>/RemoveItemServlet" method="post" style="display: inline;">
                    <input type="hidden" name="index" value="<%= i %>">
                    <button type="submit">Remove</button>
                </form>
            </div>
        <%
            }
        %>
        <div class="total-price">
            Total: Ksh.<%= String.format("%.2f", totalPrice) %>
        </div>
    </div>
</body>
</html>