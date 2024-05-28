<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            background-color: white;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        h1 {
            color: #4CAF50;
            text-align: center;
        }

        .order-form, .order-list {
            margin: 20px 0;
        }

        .order-form input, .order-form button {
            padding: 10px;
            margin: 5px 0;
            width: calc(100% - 22px);
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        .order-form button {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }

        .order-form button:hover {
            background-color: #45a049;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 15px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        .light-green {
            background-color: #e8f5e9;
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>

<div class="container">
    <h1>Order Management</h1>

    <div class="order-form">
        <h2>Add New Order</h2>
        <input type="text" id="orderId" placeholder="Order ID">
        <input type="text" id="orderStatus" placeholder="Order Status">
        <input type="text" id="orderLocation" placeholder="Order Location">
        <button onclick="addOrder()">Add Order</button>
    </div>

    <div class="order-list">
        <h2>Orders</h2>
        <table>
            <thead>
                <tr>
                    <th>Order ID</th>
                    <th>Status</th>
                    <th>Location</th>
                </tr>
            </thead>
            <tbody id="ordersTableBody">
                <!-- Orders will be appended here dynamically -->
            </tbody>
        </table>
    </div>
</div>

<script>
    $(document).ready(function() {
    fetchOrders();
});

function addOrder() {
    var id = $('#orderId').val();
    var status = $('#orderStatus').val();
    var location = $('#orderLocation').val();

    if (!id || !status || !location) {
        alert("All fields are required!");
        return;
    }

    $.post('orderTrackerServlet', {
        action: 'add',
        id: id,
        status: status,
        location: location
    }, function(response) {
        console.log("Response from server: ", response);
        try {
            var result = JSON.parse(response);
            alert(result);
            fetchOrders();
        } catch (e) {
            alert("Failed to add order: " + response);
        }
    }).fail(function(xhr, status, error) {
        console.error("Error details:", status, error);
        alert("Failed to add order. Please try again.");
    });
}

function fetchOrders() {
    $.post('orderTrackerServlet', { action: 'getOrders' }, function(response) {
        console.log("Response from server: ", response);
        try {
            var orders = JSON.parse(response);
            var tableBody = $('#ordersTableBody');
            tableBody.empty();
            orders.forEach(function(order) {
                var row = $('<tr class="light-green"></tr>');
                row.append('<td>' + order.id + '</td>');
                row.append('<td>' + order.status + '</td>');
                row.append('<td>' + order.location + '</td>');
                tableBody.append(row);
            });
        } catch (e) {
            alert("Failed to fetch orders: " + response);
        }
    }).fail(function(xhr, status, error) {
        console.error("Error details:", status, error);
        alert("Failed to fetch orders. Please try again.");
    });
}

</script>

</body>
</html>
