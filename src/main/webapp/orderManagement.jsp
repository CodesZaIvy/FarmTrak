<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Order Management</title>
    <style>
        body {
            background-color: #e0f7da; /* Light green background */
            font-family: Arial, sans-serif;
        }
        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            border: 1px solid #cccccc;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #388e3c;
        }
        .order-list {
            margin-top: 20px;
        }
        .order-list li {
            list-style: none;
            padding: 10px;
            border-bottom: 1px solid #cccccc;
        }
        .order-form {
            margin-top: 20px;
        }
        .order-form input, .order-form button {
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #cccccc;
            border-radius: 5px;
        }
        .order-form button {
            background-color: #388e3c;
            color: #ffffff;
            cursor: pointer;
        }
        .order-form button:hover {
            background-color: #2e7d32;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Order Management</h1>
        <ul id="orderList" class="order-list">
            <% 
                List<String> orders = (List<String>) session.getAttribute("orders");
                if (orders != null) {
                    for (String order : orders) {
                        out.println("<li>" + order + "</li>");
                    }
                }
            %>
        </ul>
        <div class="order-form">
            <input type="text" id="orderName" placeholder="Enter order name">
            <button type="button" onclick="addOrder()">Add Order</button>
        </div>
    </div>
    <script>
        function addOrder() {
            var orderName = document.getElementById("orderName").value;
            if (orderName === "") {
                alert("Order name cannot be empty.");
                return;
            }
            var orderList = document.getElementById("orderList");
            var newOrder = document.createElement("li");
            newOrder.textContent = orderName;
            orderList.appendChild(newOrder);
            document.getElementById("orderName").value = ""; // Clear the input
        }
    </script>
</body>
</html>
