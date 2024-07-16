<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart</title>
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

        .form-container {
            width: 100%;
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            border: 1px solid #cccccc;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .form-container input[type="text"], .form-container button[type="submit"] {
            width: 100%;
            padding: 15px;
            margin: 10px 0;
            border: 1px solid #cccccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        .form-container button[type="submit"] {
            background-color: #388e3c;
            color: #ffffff;
            font-size: 16px;
            cursor: pointer;
        }

        .form-container button[type="submit"]:hover {
            background-color: #2e7d32;
        }
    </style>
</head>
<body>
    <h1>Cart</h1>
    <div class="form-container">
        <form action="${pageContext.request.contextPath}/OrderServlet" method="post">
            <input type="text" name="orderName" placeholder="Enter order name" required>
            <button type="submit">Add to Order</button>
        </form>
    </div>
</body>
</html>
