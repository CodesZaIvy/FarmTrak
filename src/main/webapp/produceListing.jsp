<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Available Produce</title>
<style>

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: Arial, sans-serif;
  background-color: #405f32;
}

.grid-container {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 20px;
  padding: 20px;
}

.card {
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 8px;
  overflow: hidden;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  transition: transform 0.3s ease;
  
}

h1{
  font-size: 35px;
  margin-top: 10px;
  color: #abbebf;
  text-align: center;

}


.card:hover {
  transform: translateY(-5px);
}

.card img {
  width: 100%;
  height: 200px;
  object-fit: cover;
  border-bottom: 1px solid #ddd;
}

.card-content {
  padding: 20px;
}

.card h2 {
  font-size: 1.5rem;
  margin-bottom: 10px;
  color: #333;
}

.card p {
  margin: 5px 0;
  color: #666;
}

.card p.price {
  font-weight: bold;
}

</style>
</head>
<body>

  <h1>Available Produce Week</h1>

<div class="grid-container">
  
  <div class="card">
    <img src="images/produce1.jpg" alt="Onions">
    <div class="card-content">
      <h2>Onions</h2>
      <p>Quantity: 100 kg</p>
      <p class="price">Price: Kshs.250/kg</p>
      <p>Certification: Organic</p>
      <p></p>
    </div>
  </div>

  <div class="card">
    <img src="images/produce2.jpg" alt="Cabbages">
    <div class="card-content">
      <h2>Cabbages</h2>
      <p>Quantity: 50 kg</p>
      <p class="price">Price: Kshs.300/kg</p>
      <p>Certification: Non-GMO</p>
    </div>
  </div>

  <div class="card">
    <img src="images/Carrots.jpg" alt="Carrots">
    <div class="card-content">
      <h2>Carrots</h2>
      <p>Quantity: 80 kg</p>
      <p class="price">Price: Kshs.250/kg</p>
      <p>Certification: Organic</p>
    </div>
  </div>

  <div class="card">
    <img src="images/Potatoes.jpg" alt="Potatoes">
    <div class="card-content">
      <h2>Potatoes</h2>
      <p>Quantity: 100 kg</p>
      <p class="price">Price: Kshs.100/kg</p>
      <p>Certification: Organic</p>
    </div>
  </div>

  <div class="card">
    <img src="images/Tomatoes.jpg" alt="Tomatoes">
    <div class="card-content">
      <h2>Tomatoes</h2>
      <p>Quantity: 120 kg</p>
      <p class="price">Price: Kshs.250/kg</p>
      <p>Certification: Non-GMO</p>
    </div>
  </div>

  <div class="card">
    <img src="images/Sweetpotatoes.jpg" alt="Sweet Potatoes">
    <div class="card-content">
      <h2>Sweet Potatoes</h2>
      <p>Quantity: 200 kg</p>
      <p class="price">Price: Kshs.270/kg</p>
      <p>Certification: Conventional</p>
    </div>
  </div>
</div>

</body>
</html>
