<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Homepage</title>
    <style>
        /* Existing CSS styles */

        /* New CSS styles for survey form */
        #survey {
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            margin: 20px auto;
            max-width: 600px;
        }

        #survey h2 {
            color: #06100e;
            font-family: 'Courier New', monospace;
            font-size: 2em;
            font-weight: bold;
            margin-bottom: 20px;
            text-align: center;
        }

        #survey label {
            display: block;
            margin-bottom: 10px;
            font-size: 18px;
        }

        #survey input[type="text"],
        #survey input[type="email"],
        #survey input[type="tel"],
        #survey input[type="number"],
        #survey textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        #survey input[type="range"] {
            width: 100%;
            margin-bottom: 20px;
        }

        #survey textarea {
            height: 100px;
        }

        #survey input[type="submit"] {
            background-color: #1a5031;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 12px 20px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s;
            width: 100%;
        }

        #survey input[type="submit"]:hover {
            background-color: #185a3b;
        }
    </style>
</head>
<body>


    <div class="content">
        <section id="survey">
            <h2>FarmTraq Survey Form</h2>
            <form action="#" method="post">
                <!-- Client Information Section -->
                <section id="client-info">
                    <h3>Client Information</h3>
                    <label for="client-name">Name:</label>
                    <input type="text" id="client-name" name="client-name" required><br>
                    <label for="client-email">Email:</label>
                    <input type="email" id="client-email" name="client-email" required><br>
                    <label for="client-phone">Phone:</label>
                    <input type="tel" id="client-phone" name="client-phone"><br>
                </section>
    
                <!-- Farm Information Section -->
                <section id="farm-info">
                    <h3>Farm Information</h3>
                    <label for="farm-name">Farm Name:</label>
                    <input type="text" id="farm-name" name="farm-name" required><br>
                    <label for="farm-location">Location:</label>
                    <input type="text" id="farm-location" name="farm-location" required><br>
                    <label for="farm-size">Farm Size (acres):</label>
                    <input type="number" id="farm-size" name="farm-size" required><br>
                </section>
    
                <!-- Feedback Section -->
                <section id="feedback">
                    <h3>Feedback</h3>
                    <label for="feedback-rating">Rate your overall satisfaction:</label>
                    <input type="range" id="feedback-rating" name="feedback-rating" min="1" max="5" required><br>
                    <label for="feedback-comments">Comments:</label><br>
                    <textarea id="feedback-comments" name="feedback-comments" rows="4" cols="50"></textarea><br>
                </section>
    
                <!-- Additional Information Section -->
                <section id="additional-info">
                    <h3>Additional Information</h3>
                    <label for="additional-info">Any additional information you would like to provide:</label><br>
                    <textarea id="additional-info" name="additional-info" rows="4" cols="50"></textarea><br>
                </section>
    
                <!-- Submit Button -->
                <input type="submit" value="Submit">
            </form>
        </section>
    
        <!-- Rest of the content -->
    </div>



<!-- Existing scripts -->

</body>
</html>
