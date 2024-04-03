<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About FarmTrak</title>
    <style>
        /* CSS for shades of green */
        body {
            font-family: 'Times New Roman', Times, serif, sans-serif;
            overflow-x: hidden;
            margin: 0;
            padding: 0;
        }

        #logo img {
            width: 100px; /* Adjust this value as needed */
            height: auto; /* This will maintain the aspect ratio */
            position: absolute;
            top: 20px;
            left: 20px;
            z-index: 2;
        }
        .container {
            max-width: 1000px;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(202, 235, 214, 0.9);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            position: relative; /* Ensure content stays on top of carousel */
            z-index: 1; /* Ensure content stays on top of carousel */
        }
        h1 {
            color: #1aa54b;
            text-align: center;
        }
        p {
            line-height: 1.6;
        }
        /* Carousel styles */
        .carousel-container {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 120%;
            overflow: hidden;
            z-index: 0; /* Ensure carousel stays behind content */
        }
        .carousel-slide {
            display: flex;
            width: 300%;
            animation: carousel-animation 20s infinite;
        }
        .carousel-slide img {
            width: 100%; /* Ensure images fill the carousel */
            height: 100%; /* Ensure images fill the carousel */
            object-fit: contain; /* Ensure images maintain aspect ratio */
        }
        @keyframes carousel-animation {
            0% { transform: translateX(0); }
            33.33% { transform: translateX(-200%); }
            66.66% { transform: translateX(-100%); }
            100% { transform: translateX(0); }
        }
        /* Blur effect */
        .blur-background {
            filter: blur(5px); /* Adjust blur intensity */
        }
    </style>
</head>
<body>

     <div id="logo">
    <img src="images/Logo.png" alt="Logo">

    </div>

    <h2>About Us</h2>
    <!-- Carousel with blurred background -->
    <div class="carousel-container blur-background">
        <div class="carousel-slide">
            <img src="images/produce1.jpg" alt="Image 1">
            <img src="images/produce2.jpg" alt="Image 2">
            <img src="images/Potatoes.jpg" alt="Image 3">
        </div>
    </div>

    <div class="container">
        <h1>About FarmTrak</h1>
        <p>FarmTrak is a revolutionary web application designed to streamline the journey of farm produce from the hands of farmers to the plates of consumers and retailers. Our platform ensures transparency, traceability, and quality assurance every step of the way, empowering stakeholders to make informed decisions and build trust within the agricultural supply chain.</p>

        <h2>Key Features:</h2>
        <ul>
            <li>Farm-to-Table Tracking</li>
            <li>Real-Time Updates</li>
            <li>Customizable Dashboards</li>
            <li>Supply Chain Visibility</li>
            <li>Quality Assurance</li>
            <li>Compliance Management</li>
            <li>Consumer Engagement</li>
        </ul>

        <h2>How It Works:</h2>
        <ol>
            <li>Farmers</li>
            <li>Producers</li>
            <li>Distributors</li>
            <li>Retailers</li>
        </ol>

        <h2>Why Choose FarmTrak?</h2>
        <ul>
            <li>Transparency</li>
            <li>Efficiency</li>
            <li>Sustainability</li>
        </ul>

        <p>Get Started Today: Join the FarmTrak community and revolutionize the way you track, manage, and distribute farm produce. Sign up for a free trial or schedule a demo to learn more about our innovative solution.</p>

        <p>Transform your farm-to-table journey with FarmTrak:where transparency meets efficiency, from farmer to consumer and beyond.</p>
    </div>

    <script>
        // JavaScript to blur the background of the carousel
        const carouselContainer = document.querySelector('.carousel-container');
        carouselContainer.classList.remove('blur-background'); // Remove the blur effect
    </script>
</body>
</html>
