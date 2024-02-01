
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Harvest Tracking</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f8f8;
            margin: 20px;
        }

        h2 {
            color: #333;
        }

        form {
            max-width: 500px;
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

        input[type="text"] {
            width: calc(100% - 16px);
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
    <form action="HarvestController" method="post">
        <h2>Harvest Track</h2>

        <label for="produceQuantities">Produce Quantities:</label>
        <input type="text" name="produceQuantities">

        <label for="quality">Quality:</label>
        <input type="text" name="quality">

        <label for="certifications">Certifications Needed:</label>
        <input type="text" name="certifications">

        <label for="harvestDate">Harvest Date:</label>
        <input type="date" name="harvestDate">

        <label for="harvestLocation">Harvest Location:</label>
        <input type="text" name="harvestLocation">

        <label for="temperature">Temperature (°C):</label>
        <input type="number" name="temperature">

        <label for="humidity">Humidity (%):</label>
        <input type="number" name="humidity">
        
        <br>
		 <br>


        <input type="submit" value="Submit">
    </form>
</body>
</html>
