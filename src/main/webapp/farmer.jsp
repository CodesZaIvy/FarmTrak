<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Farm Details</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 20px;
        }

        h2 {
            color: #333;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #555;
        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 8px;
            margin-bottom: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>

<body>
    <form action="src/main/java/com/farmtrak/servlet/FarmController" method="post">
        <h2>Farm and Farmer Details</h2>
        <label for="farmerName">Name:</label>
        <input type="text" name="farmerName">

        <label for="farmerId">Farmer ID:</label>
        <input type="text" name="farmerId">

        <label for="farmLocation">Farm Location:</label>
        <input type="text" name="farmLocation">

        <label for="cropType">Crop Type:</label>
        <input type="text" name="cropType">

        <label for="contactInfo">Contact Info:</label>
        <input type="text" name="contactInfo">

        <label for="expectedHarvestDate">Expected Harvest Date:</label>
        <input type="date" name="expectedHarvestDate">

        <label for="planningDate">Planting Date:</label>
        <input type="date" name="planningDate">

        <label for="cultivationMethods">Cultivation Methods:</label>
        <textarea name="cultivationMethods"></textarea>

        <input type="submit" value="Submit">
    </form>
</body>

</html>
