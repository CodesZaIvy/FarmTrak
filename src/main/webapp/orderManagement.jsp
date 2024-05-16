<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Order Tracking Page</title>
<style>
    
    body {
        font-family: Arial, sans-serif;
    }
    .container {
        max-width: 800px;
        margin: 0 auto;
    }
    .order-status {
        border: 1px solid #ddd;
        padding: 1rem;
        margin-bottom: 1rem;
    }
    .status-header {
        background-color: #f8f9fa;
        padding: 0.5rem;
        font-weight: bold;
    }
    .status-content {
        padding: 0.5rem;
    }
</style>
</head>
<body>
<div class="container">
    <h1>Order Tracking Page</h1>
    <div class="order-status">
        <div class="status-header">
            <h2>Order #12345</h2>
            <p>Status: In Transit</p>
        </div>
        <div class="status-content">
            <p>Harvested: 2023-04-09 10:00:00</p>
            <p>Packed: 2023-04-09 11:00:00</p>
            <p>Shipped: 2023-04-09 12:00:00</p>
            <p>Current Location: Warehouse</p>
            <p>Estimated Delivery: 2023-04-10 10:00:00</p>
        </div>
    </div>
    <div class="order-status">
        <div class="status-header">
            <h2>Order #67890</h2>
            <p>Status: Delivered</p>
        </div>
        <div class="status-content">
            <p>Harvested: 2023-04-08 10:00:00</p>
            <p>Packed: 2023-04-08 11:00:00</p>
            <p>Shipped: 2023-04-08 12:00:00</p>
            <p>Current Location: Customer's Location</p>
            <p>Delivered Time: 2023-04-08 15:00:00</p>
        </div>
    </div>
</div>
<script>
    // Function to fetch and display orders
    function fetchOrders() {
        // Make an AJAX request to the server to get the orders
        $.get('orderTrackerServlet', function(data) {
            // Clear the existing orders
            $('#orders').empty();

            // Loop through the orders
            data.orders.forEach(function(order) {
                // Create a new order element
                var orderElement = $('<div class="order"></div>');

                // Add the order ID
                orderElement.append('<p>Order ID: ' + order.id + '</p>');

                // Add the status
                orderElement.append('<p class="status">Status: ' + order.status + '</p>');

                // Add the location
                orderElement.append('<p>Location: ' + order.location + '</p>');

                // Add the order element to the page
                $('#orders').append(orderElement);
                });
                });
                }

                // Call the fetchOrders function when the page loads
                $(document).ready(function() {
            fetchOrders();
        });
    
</script>
</body>
</html>