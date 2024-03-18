<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Produce</title>
<style>

/* Style the container */



.container {
  display: flex;
  flex-wrap: wrap;
  max-width: 1000px; /* Adjust the max-width to your preference */
  margin: 0 auto; /* Center the container */
}

.column {
  flex: 20%; /* Set width to 20% to have 5 columns */
  padding: 0 15px;
}



/* Style the cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  transition: 0.3s;
  margin-bottom: 20px;
}

/* Add some padding inside the card container */
.container .card {
  padding: 10px;
}

/* Style the images */
.card img { 
  width: 40%;
  height: 40%;
}

/* Style the card content */
.container .card .container {
  padding: 2px 16px;
}

/* Style the card title */
.container .card h2 {
  font-size: 20px;
  text-align:bottom;
}


</style>
</head>
<body>
<div class="container">
<h1>Available Produce</h1>
<div id="produce-grid" class="produce-grid">
<div class="container">
  <div class="row">
    <div class="column">
      <div class="card">
        <img src="images/produce1.jpg" alt="Produce 1" style="width:100%">
        <div class="container">
          <h2>Tomatoes</h2>
          <p>Quantity: 100 kg</p>
          <p>Price: $2.50/kg</p>
          <p>Certification: Organic</p>
        </div>
      </div>
    </div>

    <div class="column">
      <div class="card">
        <img src="images/produce2.jpg" alt="Produce 2" style="width:100%">
        <div class="container">
          <h2>Apples</h2>
          <p>Quantity: 50 kg</p>
          <p>Price: $3.00/kg</p>
          <p>Certification: Non-GMO</p>
        </div>
      </div>
    </div>

    <!-- Add more produce cards here -->

  </div>
</div>
</div>
</div> 


<script>
    document.addEventListener("DOMContentLoaded", function() {
    // Sample data - replace with actual data from your database
    const produceData = [
        { name: "Tomatoes", quantity: 100, price: 2.5, certification: "Organic", image: "tomatoes.jpg" },
        { name: "Apples", quantity: 50, price: 1.8, certification: "Conventional", image: "apples.jpg" },
        { name: "Carrots", quantity: 75, price: 1.2, certification: "Organic", image: "carrots.jpg" }
        // Add more produce items here
    ];

    const container = document.getElementById("produceContainer");

    // Loop through produce data and create HTML elements for each item
    produceData.forEach(produce => {
        const produceItem = document.createElement("div");
        produceItem.classList.add("produce-item");

        const image = document.createElement("img");
        image.src = produce.image;
        produceItem.appendChild(image);

        const name = document.createElement("h3");
        name.textContent = produce.name;
        produceItem.appendChild(name);

        const quantity = document.createElement("p");
        quantity.textContent = "Quantity available: " + produce.quantity;
        produceItem.appendChild(quantity);

        const price = document.createElement("p");
        price.textContent = "Price: $" + produce.price.toFixed(2);
        produceItem.appendChild(price);

        const certification = document.createElement("p");
        certification.textContent = "Certification: " + produce.certification;
        produceItem.appendChild(certification);

        container.appendChild(produceItem);
    });
});

</script>
</body>
</html>
