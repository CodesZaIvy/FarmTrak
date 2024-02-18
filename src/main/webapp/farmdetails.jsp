<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Farm Details</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        form {
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            padding: 20px;
            width: 300px;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        label {
            display: block;
            margin: 10px 0;
            font-size: 14px;
            color: #555;
        }

        input {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: white;
            border: none;
            padding: 10px 15px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        br {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <form action="" method="post">
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
