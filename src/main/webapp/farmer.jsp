body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }

  .grid-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center; /* Center items horizontally */
    gap: 20px; /* Gap between grid items */
    padding: 20px;
    background-color: #a49fb4;
  }

  .h1 {
  font-size: 20px;
  margin-top: 10px;
  text-align: center;
  align-self: flex-start; 
}

  .card {
    flex: 0 0 calc(20% - 10px); /* Each card occupies one-third of the container width minus the gap */
    background-color: #fff;
    border: 1px solid #ddd;
    padding: 10px;
    text-align: center;
  }

  .card img {
    width: 100%; /* Ensure images fill the container width */
    height: 250px; /* Set a fixed height */
    object-fit: cover; /* Maintain aspect ratio and fill the container */
    margin-bottom: 10px;
  }

  .card h2 {
    font-size: 20px;
    margin-bottom: 10px;
  }

  .card p {
    margin: 5px 0;
  }